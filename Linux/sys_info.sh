#!/bin/bash

if [ $UID != 0 ]
then
echo "Please run with sudo"
fi

output=$HOME/research/sys_info.txt
ip=$(ip addr | head -9 | tail -1)
execs=$(find /home -type f -perm 777)

mkdir ~/research 2> /dev/null
if [ ! -d $HOME/research ]
then
mkdir $home/research
fi

if [ -f $output ]
then rm $output
fi

echo -e "IP info" >> $output
echo -e "$ip \n" >> $output

echo -e "\nexec File:" >> $output
echo $execs >> $output


