## Check the Snapshot CRD and controller 
echo "List Snapshot CRDs "
echo "================== "
kubectl get crd | grep snapshot.storage.k8s.io
echo "List Snapshot Controller "
echo "======================== "
kubectl get pods | grep snapshot

## Create VSC and Snapshots
echo "Create VolumeSnapshotClass and Snapshot "
echo "======================================= "
kubectl create -f step2-snapshot/vsc.yaml
kubectl create -f step2-snapshot/snap.yaml
sleep 10
kubectl get volumesnapshotclass 
kubectl get volumesnapshots

## Execute into the POD and create a file
echo ""
echo "centos-pod: shell"
echo "centos-pod: touch /data/vol1/cvo_webinar_new_file.txt"
kubectl exec -it centos-pod touch /data/vol1/cvo_webinar_new_file.txt
echo "centos-pod: ls /data/vol1/"
kubectl exec -it centos-pod ls /data/vol1/