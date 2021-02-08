# the kubectl's config is located at $HOME/.kube/config.

# create new context
kubectl config set-context helloworld-context --namespace=helloworld --users ... --clusters ....

# context can be configured for
# - a specific namespace
# - a specific user for authentication
# - a specific cluster, where the specific user can authenticate

# using the newly created context
kubectl config use-context helloworld-context

kubectl get pods 

# open the yaml file in editor and apply chnages after save
kubectl edit pods blue-7f45df4494-qxl4s 

kubectl apply -f myjob.yaml view-last-applied

kubectl label pods blue-7f45df4494-qxl4s 