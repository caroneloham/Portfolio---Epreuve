@echo off
setlocal

rem Définir les fichiers de sortie
set PEDAGOGICAL_FILE=reseau_pedagogique.txt
set ADMIN_FILE=reseau_admin.txt

rem Effacer les fichiers de sortie s'ils existent déjà
if exist %PEDAGOGICAL_FILE% del %PEDAGOGICAL_FILE%
if exist %ADMIN_FILE% del %ADMIN_FILE%

rem Adresses IP des réseaux pédagogique (classées par ordre croissant)
set PEDAGOGICAL_IPS=172.22.247.176 172.22.247.177 172.22.247.178 172.22.247.179 172.22.247.180 172.22.247.181

rem Adresses IP du réseau admin (classées par ordre croissant)
set ADMIN_IPS=10.26.59.150 10.26.59.151 10.26.59.163 10.26.59.220 10.26.59.234 10.26.59.237

echo *** Réseau Pédagogique *** > %PEDAGOGICAL_FILE%
for %%i in (%PEDAGOGICAL_IPS%) do (
    echo Scanning %%i...
    nmap -sV %%i >> %PEDAGOGICAL_FILE%
    echo ========================= >> %PEDAGOGICAL_FILE%
)

echo *** Réseau Admin *** > %ADMIN_FILE%
for %%i in (%ADMIN_IPS%) do (
    echo Scanning %%i...
    nmap -sV %%i >> %ADMIN_FILE%
    echo ========================= >> %ADMIN_FILE%
)

echo Scan terminé. Les résultats sont enregistrés dans %PEDAGOGICAL_FILE% et %ADMIN_FILE%.

endlocal
