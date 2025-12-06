# HelloDevOps

Egyszerű .NET 8 alapú webalkalmazás a DevOps házi feladathoz.  
A projekt célja, hogy egy „Hello World” szintű appon keresztül bemutassa az alap DevOps lépéseket:

- kódkészítés
- verziókövetés (trunk-based development, Git + GitHub)
- buildelés
- Docker konténerizálás
- felhőbe deploy (CD – Cloud)

---

## Követelmények

- .NET 8 SDK
- Git
- (opcionális, de a feladathoz szükséges) Docker Desktop
- (felhő deployhoz) Render.com account vagy más free cloud szolgáltatás

A példák Windows PowerShell környezetre vonatkoznak.

---

## Projekt felépítése

- `HelloDevOps.sln` – solution fájl
- `HelloDevOps/HelloDevOps.csproj` – .NET 8 webprojekt
- `Program.cs` – minimal API, itt van az összes endpoint
- `Dockerfile` – Docker image build konfiguráció
- `README.md` – ez a dokumentum

---

## Build

A projekt a `HelloDevOps/HelloDevOps.csproj` fájlt tartalmazza.

```bash
dotnet build .\HelloDevOps\HelloDevOps.csproj