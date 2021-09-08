# XRayLab AgnosticV

Automated deployment of the XRay Lab on OpenShift.

## Requirements

* Order an OpenShift RHPDS environement. Last test: OpenShift 4.7 Workshop, Small.
* Scale the third machineset to 1 to have 3 workers (necessary for ODF).

## Deployment

* Log onto the bastion server
* Run `xraylab_all-in-one_deploy.sh`

## Usage

* The deployment created workshop environments for 5 users
* Login information is available in the output files created during the deployment, `user-data.yaml` and `user-info.yaml`
* For user xraylab-1 the demo has already been fully deployed (the workshop has been completed). Therefore you can use the xraylab-1 namespace as a pure demo environment for the XRay pipeline.
