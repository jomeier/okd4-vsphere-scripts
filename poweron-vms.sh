cat vms.txt | while read line ; \
  do \
    govc vm.power -k -on ${line}
  done
