# microk8s
A set of very simple bash scripts for bootstrapping my non-local microk8s setup.

My fluxcd config is here: https://github.com/ulrikjohansson/flux-homelab-cluster
## Usage
```
# Install microk8s, writes a "~/.kube/microk8s.config" file, and bootstraps fluxcd
./install.sh <ssh address>

# Remove microk8s completely from the host!
./remove.sh <ssh address>
```
