cat vms.txt | while read line ; \
  do \
    govc vm.power -k -off ${line}
  done
