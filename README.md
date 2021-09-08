# XRayLab AgnosticV

Automated deployment of the XRay Lab on OpenShift.

## Requirements

* Order an OpenShift RHPDS environement. Latest tested with OpenShift 4.7 Workshop, Small.
* Scale the third machineset to 1 to have 3 workers (necessary for ODF).
* NOTE: the deployment should also work on another pre-existing cluster. In this case you may want to adjust the configurations in `xraylab/ALL-IN-ONE` folder depending on operators already deployed. You can then regenerate the configuration with the `xraylab_all-in-one_compile.sh` script.

## Deployment

* Log onto the bastion server
* Clone this repo: `git clone https://github.com/guimou/xraylab-deployment.git`
* Change directory: `cd xraylab-deployment`
* Run: `./xraylab_all-in-one_deploy.sh`

## Usage

* The deployment has automatically created workshop environments for 5 users
* Login information is available in the output files created during the deployment, `user-data.yaml` and `user-info.yaml`
* For user xraylab-1 the demo has already been fully deployed (the workshop has been completed). Therefore you can use the xraylab-1 namespace as a pure demo environment for the XRay pipeline.
