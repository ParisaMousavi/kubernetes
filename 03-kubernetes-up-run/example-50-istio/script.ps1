# https://istio.io/latest/docs/setup/install/istioctl/
istioctl install

istioctl install --set meshConfig.accessLogFile=/dev/stdout

istioctl install -f my-config.yaml

kubectl create -f hostname.yaml
