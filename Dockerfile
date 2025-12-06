# 1. Build stage
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Csak a csproj restore-hoz
COPY HelloDevOps/HelloDevOps.csproj HelloDevOps/
RUN dotnet restore HelloDevOps/HelloDevOps.csproj

# Teljes forrás
COPY . .
RUN dotnet publish HelloDevOps/HelloDevOps.csproj -c Release -o /app/publish

# 2. Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app

COPY --from=build /app/publish .

EXPOSE 8080

ENTRYPOINT ["dotnet", "HelloDevOps.dll"]