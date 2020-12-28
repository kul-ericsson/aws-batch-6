# aws-batch-6

## Docker Installation Steps for Ubuntu
- `sudo apt-get update -y`
- `sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common`
- `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
- `sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`
- `sudo apt-get update -y`
- `sudo apt-get install docker-ce docker-ce-cli containerd.io -y`
- `sudo chown ubuntu:users /var/run/docker.sock`
- `docker version`

## Sample Docker Images with Container run commands
Ensrue that port 8080-8082 are open nin AWS Security Group attached to your EC2 Server

- `docker container run -d -p 8080:8080  kulbhushanmayer/tomcat:8.5.61`
- `docker container run -d -p 8081:8080  kulbhushanmayer/tomcat:8.5.58`
- `docker container run -d -p 8082:8080  kulbhushanmayer/tomcat:9.0.38`

## Sample Docker Commands
- `docker container ps` # List all the running containers
- `docker container ps -a` # List all container irrespective of their state
- `docker image ls` # List all images currently available on the system

## Configure Kubernetes Client to Interact with EKS

### Install AWSCLI
- `sudo apt-get update -y`
- `sudo apt-get install awscli -y`

### Install & Confgure kubectl
- `curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.18.9/2020-11-02/bin/linux/amd64/kubectl`
- `sudo chmod 755 kubectl`
- `sudo cp kubectl /usr/bin/`
- `kubectl version`
