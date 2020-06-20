set -e
ssh $1 '\
sudo snap remove microk8s
'
rm -f ~/.kube/microk8s.config
