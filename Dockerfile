FROM jupyterhub/jupyterhub:latest

MAINTAINER Marc Guillen <marc.guillen@datsci.farm>

# Just install the spawner and authenticator class
RUN pip install jupyterhub-kubespawner
RUN pip install oauthenticator

# No other stuff here, the configuration will be handled inside the k8s configMap
# manifests directly.
