#!/bin/bash
installdependencies()
{
echo “DevOps-SL-Project-2 By Rangnath Jadhav - Installing Java, Jenkins and python on Server Centos-7”;
echo “Installing Dependencies”;
sudo yum upgrade -y

sudo yum install wget -y

}
installJenkins()
{
echo “Dependencies installed now Jenkins will be installed”

sudo wget –O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key


sudo yum install epel-release java-11-openjdk-devel -y

sudo yum install jenkins -y

sudo systemctl daemon-reload

echo “starting and enabling jenkins”
sudo systemctl start jenkins

sudo systemctl enable jenkins

sudo yum install -y python3

}
installdependencies
installJenkins