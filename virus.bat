@echo off
echo 🔥 Démarrage du chaos sur Git... 🔥

:: 1️⃣ Créer 100 fichiers inutiles
echo 📁 Création de fichiers inutiles...
for /L %%i in (1,1,100) do (
    echo Ceci est un fichier inutile numéro %%i > fichier_%%i.txt
    git add fichier_%%i.txt
)

:: 2️⃣ Faire 50 commits inutiles
echo 💾 Spam de commits...
for /L %%i in (1,1,50) do (
    echo Spam commit %%i >> spam.txt
    git add spam.txt
    git commit -m "Commit inutile #%%i"
)

:: 4️⃣ Ajouter une fausse clé API (et essayer de la cacher mal)
echo 🔑 Ajout d’une clé API dans Git...
echo API_KEY=123456789abcdef > .env
git add .env
git commit -m "Oops, j'ai leaké une clé API 🤡"
git rm .env
git commit -m "Correction... enfin je crois 😅"

:: 5️⃣ Renommer tous les fichiers de manière absurde
echo 🎭 Renommage chaotique des fichiers...
for %%F in (fichier_*) do ren "%%F" "WTF_%%F"
git add .
git commit -m "Renommage total, bon courage"

:: 6️⃣ Écraser tout l’historique Git (game over)
echo ☠️ Suppression complète de l’historique Git...
git checkout --orphan new_main
git add .
git commit -m "Nouveau départ (oups, tout l’historique est effacé)"
git branch -D main
git branch -m main
git push --force origin main

echo 🔥 Chaos terminé. Ton repo est foutu. 🔥
pause
