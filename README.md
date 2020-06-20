# microk8s
A set of very simple bash scripts for bootstrapping my non-local microk8s setup.

My fluxcd config is here: https://github.com/ulrikjohansson/flux-homelab-cluster
## Usage
### Install
```
# Install microk8s, writes a "~/.kube/microk8s.config" file, and bootstraps fluxcd
./install.sh <ssh address>
```
Set up access to the flux github repo, by setting a deploy key
Instructions here: https://docs.fluxcd.io/en/1.19.0/tutorials/get-started-kustomize/#setup-github-write-access

### Remove
```
# Remove microk8s completely from the host!
./remove.sh <ssh address>

# You might want to remove the deploy key from your fluxcd github repo too
```
