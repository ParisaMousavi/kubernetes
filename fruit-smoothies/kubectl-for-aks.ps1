# Retrieve the cluster credentials
# kubectl is the main Kubernetes command-line client you use to interact with your 
# cluster and is available in Cloud Shell. 
# A cluster context is required to allow kubectl to connect to a cluster. 
# The context contains the cluster's address, a user, and a namespace. 
# Use the az aks get-credentials command to configure your instance of kubectl.
az aks get-credentials \
    --resource-group $RESOURCE_GROUP \
    --name $AKS_CLUSTER_NAME

kubectl get nodes

# get namespaces
kubectl get namespace

# create new namespace
kubectl create namespace ratingsapp

