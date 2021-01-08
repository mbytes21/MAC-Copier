#!/bin/sh
echo "STARTING..."
sleep 3
echo What interface are you using? 
read interfaces
sleep 1
sudo ifconfig $interfaces down
sudo macchanger -p $interfaces
sudo ifconfig $interfaces up