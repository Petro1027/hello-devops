var builder = WebApplication.CreateBuilder(args);

builder.WebHost.UseUrls("http://0.0.0.0:8080");

var app = builder.Build();

app.MapGet("/", () => "Hello DevOps from .NET 8! 🚀");

app.MapGet("/health", () => "OK");

app.Run();