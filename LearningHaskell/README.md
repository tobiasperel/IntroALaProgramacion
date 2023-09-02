# Como correr un archivo en Haskell💻
1-  Instalar Haskell:

```bash 
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true } catch { Write-Error $_ }
```
2. Puedes provar tenerlo instalado poniendo el comando **ghc**.
   
3. crear tu archivo .hs.
   
4.  En la misma carpeta poner el siguente comando en la terminal:
```bash 
ghc -o nombreEjecutable nombreDelArchivo.hs
```
5. Podras correrlo poniendo el nombre del ejecutable:
```bash 
.\nombreEjecutable.exe
```
---
Material complementario:

[Download Haskell](https://www.haskell.org/downloads/)
