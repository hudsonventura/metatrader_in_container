#!/bin/bash
wine "C:/Program Files/MetaTrader 5/terminal64.exe" /config:"C:\Program Files\MetaTrader 5\mt5.ini" &
PID=$!

# Monitorar processo
while kill -0 $PID 2> /dev/null; do
    sleep 5
done

# Se saiu do loop, o MT5 fechou
echo "MetaTrader foi encerrado, finalizando container."
exit 1
