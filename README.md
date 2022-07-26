[![CircleCI](https://dl.circleci.com/status-badge/img/gh/johnokwajebi/uda-k8s-mlapi/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/johnokwajebi/uda-k8s-mlapi/tree/main)

## Project Summary

This project operationalize a Machine Learning Microservice API as a final project from Udacity Cloud DevOps Nanodegree

This contains pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

## Running The Flask App

1. Standalone:  `python app.py`
2. To Run in Docker:  `./run_docker.sh` ---> This contains scripts and command used to build the docker image and run as a container
3. The `./upload_docker.sh` script authenticates with docker, tags the image built locally and pushes to docker 
4. Open a new terminal, then run  `./make_prediction.sh` to generate predictions for house pricing


## Running in Kubernetes

* Install Docker Desktop and start Docker Desktop, Another option would be to use Rancher Desktop
* Setup and Configure Kubernetes locally by installing Minikube, Rancher can be used to start a local k8s cluster
* Run minikube start to start a local kubernetes cluster
* Run `./run_kubernetes.sh` to create a deployment from the docker image and forwards container ports to the host
* Use  kubectl to interact with the cluster to get information about pods and logs
* Run  `./make_prediction.sh` to generate predictions for house pricing

