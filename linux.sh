#!/bin/bash
echo "=================================="
echo " Linux Security Check Script"
echo "=================================="

#1 . Check SSH root login 
echo -e "\n[+] Checking if root login is allowed in SSH..."
sh=$(cat /etc/ssh/sshd_config | grep PermitRootLogin | awk '{print $2}')
echo "$sh"

# 2. List all users with UID 0
echo -e "\n[+] Checking if SSH password authentication is enabled..."
sh1=$(cat /etc/ssh/sshd_config | grep PubkeyAuthentication)
echo "$sh1"

# 3. SS installation checking 
echo -e "\n[+] Checking the ss installation.."
var=$(ss -v | grep iproute2 | awk '{print $3}')
if [ "$var" == "iproute2-6.15.0" ]; then
	echo "~~~~~~~~~~~~~~~~~~~~~~~"
	echo "Tool already exists"
	echo "~~~~~~~~~~~~~~~~~~~~~~~"
else 
	sudo apt install ss -y
	echo "~~~~~~~~~~~~~~~~~~~~~~~"
	echo "ss install successfully"
	echo "~~~~~~~~~~~~~~~~~~~~~~~"
fi

# 4. firewalld execution
echo -e "\n[+] checking firewalld ...."
var1=$(service firewalld status | grep active | awk '{print$2}')
if [ "var1" == "active" ]; then
	echo " firewalld is active "
else
	service firewalld start
	echo " Firewall in activating."
fi

# 5. ssh 
echo -e "\n[+] ssh status...."
var2=$(service ssh status | grep active | awk '{print$2}') 
if [ "var2" == "active" ]; then
	echo " ssh is active "
else 
	service ssh start
	echo " ssh in activating "
fi

var3=$(date +%d-%m-%Y)
read -p "Enter your file name: " name
touch $name-$var3.txt
echo $sh >> $name-$var3.txt
echo $sh1 >> $name-$var3.txt
echo $var1 >> $name-$var3.txt
echo $var2 >> $name-$var3.txt

echo "all data save in $name file."
