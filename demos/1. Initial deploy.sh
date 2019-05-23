


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



# deploy pod
kubectl run sqlserver --image=mcr.microsoft.com/mssql/server:2019-CTP2.5-ubuntu `
--env ACCEPT_EULA=Y --env SA_PASSWORD=Testing1122



# view deployment
kubectl get deployments



# view pod
kubectl get pods



# exec into pod
kubectl exec -it PODNAME bash



# navigate to sqlcmd
cd /opt/mssql-tools/bin/



# connect to sql
./sqlcmd -S . -U sa -P Testing1122



# confirm sql version
SELECT @@VERSION;
GO



# exit SQL and pod
exit



# expose service
kubectl expose deployment sqlserver --type=LoadBalancer --port=1433 --target-port=1433



# get service IP
kubectl get services



# clean up
kubectl delete deployment sqlserver
kubectl delete service sqlserver