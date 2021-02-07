gcloud init

gcloud compute zones list

gcloud config set compute/zone europe-west1-b

gcloud container clusters create helloworld-cluster

kubectl version

# deploy application on kubernetes cluster
kubectl create deployment helloworld-server --image=gcr.io/lsn-kubernetes/helloworld:1.0

# create kubernetes service
kubectl expose deployment helloworld-server --type=LoadBalancer --port 3000

# delete service
kubectl delete service helloworld-server

# inspect service
kubectl get services

kubectl get pods

# get kubeproxies if it's running as daemonset
kubectl get daemonsets -n kube-system kube-proxy

kubectl get deployments -n kube-system core-dns or kube-dns

kubectl get services --namespace=kube-system kube-dns