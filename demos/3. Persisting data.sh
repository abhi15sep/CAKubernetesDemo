


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



# view storageclass yaml file
cat storageclass.yaml



# deploy to cluster
kubectl create -f storageclass.yaml



# view storage class
kubectl get storageclass



# view pvc yaml file
cat persistentvolumeclaim.yaml



# deploy to cluster
kubectl apply -f persistentvolumeclaim_system.yaml
kubectl apply -f persistentvolumeclaim_user.yaml



# view persistent volume claim
kubectl get persistentvolumeclaim



# describe persistent volume claim
kubectl describe persistentvolumeclaim



# view persistent volume
kubectl get persistentvolume



# deploy to cluster
kubectl apply -f sqlserver3.yaml



# view deployment
kubectl get deployments



# view pods
kubectl get pods



# describe pods
kubectl describe pods


# view pods
kubectl get pods


# exec into pod
kubectl exec -it PODNAME bash



# view filesystem
df -h



# exit pod
exit



# view service
kubectl get service



# get pods
kubectl get pods -o wide



# delete pod
kubectl delete pod PODNAME



# view pods
kubectl get pods -o wide



# describe pod
kubectl describe pods 



# view pvc
kubectl get pvc



# get service
kubectl get service



# clean up
kubectl delete deployment sqlserver3
kubectl delete service sqlserver3-service

kubectl delete pvc mssql-systemdata mssql-userdata

kubectl delete storageclass mssql-storage