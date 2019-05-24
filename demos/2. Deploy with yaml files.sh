


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



# deploy to cluster
kubectl apply -f sqlserver2.yaml



# view deployment
kubectl get deployments



# view pods
kubectl get pods



# get more info on pods
kubectl get pods -o wide



# describe pods
kubectl describe pods



# view service
kubectl get service



# get pods
kubectl get pods -o wide


# delete pod
kubectl delete pod PODNAME



# view pods
kubectl get pods -o wide



# get service
kubectl get service



# clean up
kubectl delete deployment sqlserver2
kubectl delete service sqlserver2-service