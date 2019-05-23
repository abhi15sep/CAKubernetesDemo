


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



# create namespace
kubectl create namespace ag1



# create operator
kubectl apply -f operator.yaml --namespace ag1



# get deployment
kubectl get deployment --namespace ag1



# create secret
kubectl create secret generic sql-secrets --from-literal=sapassword="Testing1122" --from-literal=masterkeypassword="Testing1122"  --namespace ag1



# deploy sql server
kubectl apply -f sqlserver_ags.yaml --namespace ag1



# get pods
kubectl get pods --namespace ag1 



# get services
kubectl get services -o wide --namespace ag1



# describe pods
kubectl describe pods mssql1-0 --namespace ag1



# deploy services
kubectl apply -f ag-services.yaml --namespace ag1



# get services
kubectl get services --namespace ag1 -o wide



# perform failover
kubectl apply -f failover.yaml --namespace ag1



# describe failover job
kubectl describe jobs/manual-failover --namespace ag1



# delete job 
kubectl delete job manual-failover --namespace ag1



# clean up
kubectl delete namespace ag1

 