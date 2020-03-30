## Install Snapshot Beta CRDs 
echo "Install Snapshot Beta CRDs"
echo "=========================="
kubectl create -f https://github.com/kubernetes-csi/external-snapshotter/blob/master/config/crd/snapshot.storage.k8s.io_volumesnapshotclasses.yaml
kubectl create -f https://github.com/kubernetes-csi/external-snapshotter/blob/master/config/crd/snapshot.storage.k8s.io_volumesnapshotcontents.yaml
kubectl create -f https://github.com/kubernetes-csi/external-snapshotter/blob/master/config/crd/snapshot.storage.k8s.io_volumesnapshots.yaml

echo "Install Common Snapshot Controller"
echo "=================================="
kubectl create -f https://github.com/kubernetes-csi/external-snapshotter/blob/master/deploy/kubernetes/snapshot-controller/rbac-snapshot-controller.yaml
kubectl create -f https://github.com/kubernetes-csi/external-snapshotter/blob/master/deploy/kubernetes/snapshot-controller/setup-snapshot-controller.yaml
