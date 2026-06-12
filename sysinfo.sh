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
uname -a


