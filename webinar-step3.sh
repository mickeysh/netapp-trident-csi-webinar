## Create a clone from the Snapshot and connect a new POD
echo "Create clone and connect a new POD "
echo "================================== "
kubectl create -f step2-snapshot/pvc-from-snap.yaml
kubectl create -f step2-snapshot/pod-snap.yaml

## Execute into the POD and list the files
sleep 20
kubectl get pods
echo ""
echo "centos-pod-snap: shell"
echo "centos-pod-snap: ls /data/vol1/"
kubectl exec -it centos-pod-snap ls /data/vol1/