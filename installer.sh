#!/bin/bash
mkdir /root/Downloads/vasl
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/bin/python:~/root/Downloads/vasl/
alias myscript=~/root/Downloads/vasl/
cd /usr/bin
ln -fsT /root/Downloads/vasl/vasl.py /usr/bin/vasl
chmod u+x vasl.py
chmod u+x cleaner.sh
chmod u+x /usr/bin/vasl
echo "Installed!"
echo "VASL can be called anywhere from system"