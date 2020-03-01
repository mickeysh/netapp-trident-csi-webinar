## Show NetApp trident CRDs and CSI Controllers
kubectl get crd | grep trident.netapp.io
kubectl get deploy -n trident 
kubectl get ds -n trident 

## Create SC, basic PVC and connect a POD
kubectl create -f nas-sg.yaml
kubectl create -f pvc-ontapnas.yaml
kubectl create -f pod.yaml
## Execute into the POD and create a file
kubectl exec -it centos-pod bash
## touch /data/vol1/cvo_webinar.txt

## Check the Snapshot CRD and controller 
kubectl get crd | grep snapshot.storage.k8s.io
kubectl get pods | grep snapshot

## Create VSC and Snapshots
kubectl create -f vsc.yaml
kubectl create -f snap.yaml

## Execute into the POD and create a file
kubectl exec -it centos-pod bash
## touch /data/vol1/cvo_webinar_new_file.txt

## Create a clone from the Snapshot and connect a new POD
kubectl create -f pvc-from-snap.yaml
kubectl create -f pod-snap.yaml
## Execute into the POD and list the files
kubectl exec -it centos-pod bash
## ls /data/vol1/

## Delete all resources 
kubectl delete pods -n default --all
kubectl delete volumesnapshots -n default --all
kubectl delete pvc -n default --all 
