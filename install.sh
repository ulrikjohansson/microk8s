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

# get the key to be used as deployment key for github
FLUX_PUB_KEY=$(fluxctl --k8s-fwd-ns flux identity)
echo "Add this to the flux repo deployment keys:"
echo ""
echo $FLUX_PUB_KEY

