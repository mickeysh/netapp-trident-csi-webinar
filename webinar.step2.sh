## Check the Snapshot CRD and controller 
kubectl get crd | grep snapshot.storage.k8s.io
kubectl get pods | grep snapshot

## Create VSC and Snapshots
kubectl create -f step2-snapshot/vsc.yaml
kubectl create -f step2-snapshot/snap.yaml

## Execute into the POD and create a file
kubectl exec -it centos-pod bash