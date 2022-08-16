[![CircleCI](https://dl.circleci.com/status-badge/img/gh/goribash/Project-4-Devops-Microservices/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/goribash/Project-4-Devops-Microservices/tree/main)

## Operationalize a Machine Learning Microservice API

We are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. This project will test the ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. 

## Project Tasks
The project goal is to operationalize this working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications. In this project you will:

* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested


## Instructions

### Setup the Environment 

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
* Install Hadolint
* Run `make lint(pylint app.py files)` to run lint checks on the project code.
* Run `Hadolint Dockerfile` to check for errors in the Dockerfile
* Install  Minikube

### Docker
1. Setup and Configure the Docker 
    * Install Docker 
    * create a free docker account if you don't have any yet 
    * Run `docker --version` to check it's the latest version after installation in the terminal 
    * Run `./run_docker.sh` to build and run the app in a container 
    * Run `./docker.ps` to check if docker is running 
    * Run  `./make_prediction.sh` to make prediction and 
    * Copy & Paste the logging info at terminal to `docker_out.txt`
    * Run `./upload_docker.sh` to send image to docker hub 

### Kubernetes
2. Set Up and Configure Kubernetes
    * Install Minikube
    * Run `minikube start` to start Minikube
    * Run `kubectl version` to verify installation 
    * Run `./run_kubernetes.sh`
    * Run `kubectl get pods` to check running pods and troubleshoot if necessary 
    * Run  `./make_prediction.sh` to make prediction
    * Copy & paste the logging info at terminal to `kubernetes_out.txt`


### Create Flask App in Container
3. Create the Flask App
    * Run `./run_docker.sh` to build and start the Flask app container.
    * Run `./upload_docker.sh` to upload the container to docker hub.
    * Run `./run_kubernetes_sh ` to deploy flask app 
    

---

## Files in This Repository

* Makefile: This file contains a set of directives used to execute the tasks
* Dockerfile: It contains a set of instruction to build the docker image for the app
* app.py: The flask application app python file 
* requirements.txt: This file contains all dependencies for the project
* run_docker.sh: This script is used to build and run the docker image defined in the dockerfile  
* make_prediction.sh: This shell script is responsible for sending some input data to your containerized application via the appropriate port
* upload_docker.sh: This script uploads the docker image to docker hub
* run_kubernetes.sh: This script creates a pod in kubernetes and deploys application to kubernetes cluster
* docker_out.txt: It contains log statements that and also out the output prediction values.
* kubernetes_out.txt: This contains the text output of the log statement after calling the run_kubernetes.sh
