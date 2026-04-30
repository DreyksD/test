# Активация виртуального окружения (путь для Windows)
.\venv\Scripts\activate

# Переход в папку source и генерация
cd source
python main.py --use-git
cd ..

# Деактивация
deactivate

# Коммит и пуш
git add githubmirror/
git commit -m "Auto-update configs: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
git push origin main

Write-Host "Обновление завершено: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"