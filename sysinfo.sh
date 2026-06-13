#!/bin/bash
echo "=== INFO DEL SISTEMA ==="

echo ""
echo "--- CPU ---"
cat /proc/cpuinfo | grep "model name" | head -1

echo ""
echo "--- RAM ---"
cat /proc/meminfo | head -2

echo ""
echo "--- DISCO ---"
df -h

echo ""
echo "--- USUARIO ---"
whoami

echo ""
echo "--- PROCESOS ACTIVOS ---"
ps aux | head -5

echo ""
echo "--- FECHA Y HORA ---"
date

echo ""
echo "--- VARIABLES DE ENTORNO ---"
echo "HOME: $HOME"

echo ""
echo "--- SISTEMA ---"

echo ""
echo "--- TEMPERATURA CPU ---"
cat /sys/class/thermal/thermal_zone0/temp 2>/dev/null | awk '{print $1/1000 "°C"}' || echo "No disponible"

echo ""
echo "--- TIEMPO ENCENDIDO ---"
cat /proc/uptime  |  awk '{print int($1/3600)"h "int(($1%3600)/60)"m "int($1%60)"s"}' 



uname -a


