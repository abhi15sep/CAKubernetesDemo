


# list contexts
kubectl config get-contexts



# switch context to aws cluster
kubectl config use-context arn:aws:eks:us-east-1:048429195773:cluster/dbops_eks_poc



# confirm kubectl context
kubectl config current-context



# view nodes
kubectl get nodes



# navigate to yaml file
cd C:\git\dbafromthecold\CA-kubernetesDemo\yaml



# view sql yaml file
cat sqlserver2.yaml



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