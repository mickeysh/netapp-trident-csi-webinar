## Check the Snapshot CRD and controller 
echo "List Snapshot CRDs and Controller "
echo "================================= "
kubectl get crd | grep snapshot.storage.k8s.io
kubectl get pods | grep snapshot

## Create VSC and Snapshots
echo "Create VolumeSnapshotClass and Snapshot "
echo "======================================= "
kubectl create -f step2-snapshot/vsc.yaml
kubectl create -f step2-snapshot/snap.yaml
kubectl get volumesnapshotclass 
kubectl get volumesnapshots

## Execute into the POD and create a file
kubectl exec -it centos-pod bash