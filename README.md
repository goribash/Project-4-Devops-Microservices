[![CircleCI](https://dl.circleci.com/status-badge/img/gh/goribash/Project-4-Devops-Microservices/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/goribash/Project-4-Devops-Microservices/tree/main)

## Operationalize a Machine Learning Microservice API

We are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. We will operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. 


## Instructions

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

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

---

### Files in This Repository

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
