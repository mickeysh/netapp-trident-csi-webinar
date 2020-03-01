## Create SC, basic PVC and connect a POD
kubectl create -f step1-pvc/nas-sg.yaml
kubectl get storageclass 
kubectl create -f step1-pvc/pvc-ontapnas.yaml
kubectl get pvc
kubectl get pv
kubectl create -f step1-pvc/pod.yaml
## Execute into the POD and create a file
kubectl exec -it centos-pod bash