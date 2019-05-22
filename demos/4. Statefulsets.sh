


# list contexts
kubectl config get-contexts



# switch context to aws cluster
kubectl config use-context arn:aws:eks:us-east-1:048429195773:cluster/dbops_eks_poc



# confirm kubectl context
kubectl config current-context



# view nodes
kubectl get nodes
