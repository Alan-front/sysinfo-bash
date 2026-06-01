
#!/bin/bash
echo "=== INFO DEL SISTEMA ==="
echo ""
echo "--- CPU ---"
cat /proc/cpuinfo | grep "model name" | head -1
echo ""
echo "--- RAM ---"
cat /proc/meminfo | head -2
echo ""
echo "--- SISTEMA ---"

echo ""
echo "--- DISCO ---"
DF -h

uname -a

