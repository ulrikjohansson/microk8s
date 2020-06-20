set -e
ssh $1 '\
sudo snap install microk8s --classic
/snap/bin/microk8s enable dns
'
./get_config.sh $1 > ~/.kube/microk8s.config
kubectx microk8s
kubectl cluster-info
kubectl apply -k fluxcd
kubectl -n flux rollout status deployment/flux
