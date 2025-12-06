# HelloDevOps

### Hogyan indítható a projekt Dev Containerben?

1. Telepítsd az alábbiakat:
    - Docker Desktop (és indítsd el, hogy fusson a Docker engine),
    - Visual Studio Code,
    - Dev Containers bővítmény VS Code-hoz (`Dev Containers` – ms-vscode-remote.remote-containers).

2. Klónozd a repót, ha még nem tetted meg:

   ```bash
   git clone https://github.com/Petro1027/hello-devops.git
   cd hello-devops

Nyisd meg a projekt mappát Visual Studio Code-ban  
(`File → Open Folder...` → válaszd ki a `hello-devops` mappát).

Nyomd meg a `Ctrl+Shift+P` billentyűket, írd be, hogy  
**Dev Containers: Reopen in Container**, majd válaszd ki ezt az opciót.

A VS Code a `.devcontainer` mappában lévő konfiguráció alapján:

- felépíti a Dev Container image-et,
- elindítja a konténert,
- és ebben a konténerben nyitja meg újra a projektet.

A Dev Containerben nyiss egy új terminált (`Terminal → New Terminal`), majd futtasd:

```bash
dotnet build HelloDevOps/HelloDevOps.csproj
dotnet run --project HelloDevOps/HelloDevOps.csproj


Ezután a böngészőben a http://localhost:8080
 címen éred el az alkalmazást



