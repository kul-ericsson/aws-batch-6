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
# Ensrue that port 8080-8081 are open nin AWS Security Group attached to your EC2 Server
- `docker container run -d -p 8080:8080  kulbhushanmayer/tomcat:8.5.61`
- `docker container run -d -p 8081:8080  kulbhushanmayer/tomcat:8.5.58`
- `docker container run -d -p 8082:8080  kulbhushanmayer/tomcat:9.0.38`
