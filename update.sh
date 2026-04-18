#!/bin/bash

cd ~/GitHub/test

# Активация окружения и генерация
source venv/bin/activate
cd source
python main.py
cd ..

# Деактивация
deactivate

# Коммит и пуш новых конфигов
git add githubmirror/
git commit -m "Auto-update configs: $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main

echo "✅ Обновление завершено: $(date '+%Y-%m-%d %H:%M:%S')"