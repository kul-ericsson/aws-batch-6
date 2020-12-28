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
