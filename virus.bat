@echo off
echo 📁 Création de 10000 fichiers vides (0 Ko)...

for /L %%i in (1,1,20000) do (
    type nul > "fichier_%%i.txt"
)

echo ✅ Création terminée ! 5000 fichiers vides générés.
pause
