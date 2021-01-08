#!/bin/sh
echo "STARTING..."
sleep 3
echo What interface are you using? 
read interfaces
sleep 1
echo What is the ip range you want to scan? 
read iprange
sleep 1
echo The IP range is $iprange
clear
echo "SCANNING..."
sudo nmap -sP -n $iprange
echo
echo
echo What device do you want to impersonate?
read device
echo impersonating $device with $interfaces
sudo ifconfig $interfaces down
sudo macchanger --mac $device $interfaces
sudo ifconfig $interfaces up
