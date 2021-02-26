cat vms.txt | while read line ; \
  do \
    govc vm.power -k -r ${line}
  done
