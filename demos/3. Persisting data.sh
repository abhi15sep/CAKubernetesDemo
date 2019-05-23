


# list contexts
kubectl config get-contexts



# switch context to aws cluster
kubectl config use-context arn:aws:eks:us-east-1:048429195773:cluster/dbops_eks_poc



# confirm kubectl context
kubectl config current-context



# set location
cd C:\git\dbafromthecold\CAKubernetesDemo\yaml



# view nodes
kubectl get nodes



# view storageclass yaml file
cat storageclass.yaml



# deploy to cluster
kubectl apply -f storageclass.yaml



# view storage class
kubectl get storageclass



# view pvc yaml file
cat persistentvolumeclaim.yaml



# deploy to cluster
kubectl apply -f persistentvolumeclaim.yaml



# view persistent volume claim
kubectl get persistentvolumeclaim



# describe persistent volume claim
kubectl describe persistentvolumeclaim



# view persistent volume
kubectl get persistentvolume



# create secret
kubectl create secret generic mssql --from-literal=SA_PASSWORD="Testing1122"



# view secret
kubectl get secrets



# describe secret
kubectl describe secret



# view sql yaml file
cat sqlserver3.yaml



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



# view pvc
kubectl get pvc



# get service
kubectl get service



# describe pod
kubectl describe pods 



# view pods
kubectl get pods



# get service
kubectl get service



# clean up
kubectl delete deployment sqlserver3
kubectl delete service sqlserver3-service

kubectl get pvc
kubectl get pv