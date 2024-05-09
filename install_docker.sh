
#!/bin/bash

echo "***********************updating system*********************************************************************************************************"
sudo apt update
echo "***********************upgrading system**********************************************************************************************"
sudo apt upgrade -y
echo "***********************removing old docker***********************************************************************************************"
sudo apt-get remove docker docker-engine docker.io containerd runc
echo "***********************removing old docker******************************************************************************************"
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
echo "***********************Add GPG key******************************************************************************************************"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "***********************add docker repo***********************************************************************************************"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo "***********************specify installation source*************************************************************************************"
apt-cache policy docker-ce
echo "***********************installing docker*********************************************************************************************"
sudo apt install docker-ce -y
echo "***********************add docker to group************************************************************************************************"
sudo usermod -aG docker $USER
echo "***********************check docker status************************************************************************************************"
sudo systemctl status docker
