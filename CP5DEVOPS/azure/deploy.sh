#!/bin/bash
echo "🚀 Iniciando deploy .NET..."

APP_PATH="$HOME/meuapp"
APP_DLL="CP5DEVOPS.dll"

cd "$APP_PATH" || exit

# Parar processos antigos
echo "🛑 Parando instâncias antigas..."
pkill -f "$APP_DLL" || true

# Subir aplicação
echo "🚀 Subindo nova versão..."
nohup dotnet "$APP_DLL" > app.log 2>&1 &

echo "✅ Deploy finalizado com sucesso!"
