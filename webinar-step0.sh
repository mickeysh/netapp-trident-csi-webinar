## Show NetApp trident CRDs and CSI Controllers
echo "list of trident CRDs"
echo "===================="
kubectl get crd | grep trident.netapp.io
echo "list of trident deployment and daemonset"
echo "========================================"
kubectl get deploy -n trident 
kubectl get ds -n trident 