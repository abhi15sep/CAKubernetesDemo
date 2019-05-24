


# list contexts
kubectl config get-contexts



# switch context to aws cluster
kubectl config use-context CLUSTERNAME



# confirm kubectl context
kubectl config current-context



# set location
cd C:\git\dbafromthecold\CAKubernetesDemo\yaml



# view nodes
kubectl get nodes



# create storage class
kubectl apply -f storageclass.yaml



# view storage class
kubectl get storageclass



# deploy statefulset
kubectl apply -f statefulset.yaml



# confirm statefulset
kubectl get statefulsets



# describe statefulset
kubectl describe statefulset



# view pods
kubectl get pods



# describe pods
kubectl describe pods




# get persistent volume claims
kubectl get pvc



# get persistent volume
kubectl get pv



# view services
kubectl get services



# clean up
kubectl delete statefulset mssql
kubectl delete service mssql-hl-service
kubectl delete service mssql-service

kubectl delete pvc mssql-system-mssql-0
kubectl get pv



