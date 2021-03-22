cat vms.txt | while read line ; \
  do \
    printf "${line}: "
    govc vm.ip -k -a ${line}
  done
