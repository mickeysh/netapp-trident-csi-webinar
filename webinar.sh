## Show NetApp trident CRDs and CSI Controllers
kubectl get crd | grep trident.netapp.io
kubectl get deploy -n trident 
kubectl get ds -n trident 

## Create SC, basic PVC and connect a POD
kubectl create -f step1-pvc/nas-sg.yaml
kubectl get storageclass 
kubectl create -f step1-pvc/pvc-ontapnas.yaml
kubectl get pvc
kubectl get pv
kubectl create -f step1-pvc/pod.yaml
## Execute into the POD and create a file
kubectl exec -it centos-pod bash
## touch /data/vol1/cvo_webinar.txt

## Check the Snapshot CRD and controller 
kubectl get crd | grep snapshot.storage.k8s.io
kubectl get pods | grep snapshot

## Create VSC and Snapshots
kubectl create -f step2-snapshot/vsc.yaml
kubectl create -f step2-snapshot/snap.yaml

## Execute into the POD and create a file
kubectl exec -it centos-pod bash
## touch /data/vol1/cvo_webinar_new_file.txt

## Create a clone from the Snapshot and connect a new POD
kubectl create -f step2-snapshot/pvc-from-snap.yaml
kubectl create -f step2-snapshot/pod-snap.yaml
## Execute into the POD and list the files
kubectl get pods
kubectl exec -it centos-pod-snap bash
## ls /data/vol1/
