if [[ -z ${1} ]]; then
  printf "\nMissing snapshot name!\n\n"
  return
fi

cat vms.txt | while read line ; \
  do \
    VM_NAME=$(echo ${line} | sed "s#${VM_PATH}/##g")
    echo $VM_NAME
    govc snapshot.revert -k -vm ${line} "${VM_NAME}-${1}"
  done
