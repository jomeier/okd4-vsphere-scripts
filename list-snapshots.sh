cat vms.txt | while read line ; \
  do \
    govc snapshot.tree -k -vm ${line}  
  done
