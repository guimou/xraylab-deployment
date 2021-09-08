# XRayLab AgnosticV

Automated deployment of the XRay Lab on OpenShift.

## Requirements

* Order an OpenShift RHPDS environement. Last test: OpenShift 4.7 Workshop, Small.
* Scale the third machineset to 1 to have 3 workers (necessary for ODF).

## Deployment

* Log onto the bastion server
* Run `xraylab_all-in-one_deploy.sh`
