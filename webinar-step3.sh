## Create a clone from the Snapshot and connect a new POD
kubectl create -f step2-snapshot/pvc-from-snap.yaml
kubectl create -f step2-snapshot/pod-snap.yaml
## Execute into the POD and list the files
sleep 10
kubectl get pods
kubectl exec -it centos-pod-snap bash