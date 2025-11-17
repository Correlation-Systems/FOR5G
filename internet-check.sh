#!/bin/bash

#check if modem is connected to 5G / 4G
ip=$(ifconfig wwan0 | grep 'inet' | awk '{print $2}' | sed 's/addr://' | head -1)
if [ -z "$ip" ]; then
  echo "Modem not connected to 5G /4G."
  
  modem=$(mmcli -L | grep "Modem/" | awk -F'/' '{print $NF}' | awk '{print $1}')
  attach=$(mmcli -m $modem | grep attached)
  if [ ! -z "$attach" ]; then
    nmcli conn up internet
  fi
else
  echo "Modem connected"
fi
