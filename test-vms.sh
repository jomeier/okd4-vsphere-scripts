#!/bin/bash

while [ true ];
do
  source reboot-vms.sh
  sleep 1m
  source show-ips.sh
  sleep 10s

  printf "#####################################################################\n"
  printf "Fremde IPs: \n"
#  CIP=$(source check-ips.sh)
  source check-ips.sh
  printf "#####################################################################\n"

  printf "Waiting ...\n"
  sleep 30s


#  if [ -z "${CIP}" ]; then
#    continue    
#  else
#    printf "Error!\n"
#    printf $CIP
#    printf "\n"
#    return
#  fi

done
