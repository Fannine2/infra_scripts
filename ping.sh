#!/bin/bash

network="192.168.0."

for i in {1..254}

do
  ip=$network$i
  ping -c 1 $ip > /dev/null
  if [ $? -eq 0 ]
  then
    echo "$ip está respondendo"
  fi
done
