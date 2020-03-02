## Create SC, basic PVC and connect a POD
echo "Create StorageClass "
echo "===================="
kubectl create -f step1-pvc/nas-sg.yaml
kubectl get storageclass 
echo "Create PVC "
echo "===================="
kubectl create -f step1-pvc/pvc-ontapnas.yaml
sleep 10
kubectl get pvc
kubectl get pv
echo "Create POD and connect to PVC "
echo "============================= "
kubectl create -f step1-pvc/pod.yaml
sleep 10
## Execute into the POD and create a file
echo ""
echo "centos-pod: shell"
echo "centos-pod: touch /data/vol1/cvo_webinar.txt"
kubectl exec -it centos-pod touch /data/vol1/cvo_webinar.txt
echo "centos-pod: ls /data/vol1/"
kubectl exec -it centos-pod ls /data/vol1/