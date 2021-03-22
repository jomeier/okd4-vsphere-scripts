SCRIPT=$1

for ip in $(oc get nodes  -o jsonpath='{.items[*].status.addresses[?(@.type=="InternalIP")].address}')
do
   echo "node $ip"
   ssh -o StrictHostKeyChecking=no core@$ip "bash -s" -- < ./${SCRIPT}
done

