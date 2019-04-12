#!/bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/bin/perl:/usr/sbin/python:/usr/bin/python:~/root/Downloads/vasl-master/
alias myscript=~/root/Downloads/vasl-master/
cd /usr/bin
ln -fsT /root/Downloads/vasl-master/vasl.py /usr/bin/vasl
chmod u+x /root/Downloads/vasl-master/vasl.py
chmod u+x /root/Downloads/vasl-master/cleaner.sh
chmod u+x /usr/bin/vasl
cd /root/
echo "Installed!"
echo "VASL can be called anywhere from system"
