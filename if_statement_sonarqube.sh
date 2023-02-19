#!/bin/bash
#Descript: steps to install Sonarque. It doesn't like to be run on root user that is why we put sudo at the beginning.

if
  [ $USER != root ]
then
echo -e "\n you need root access to run this\n"
exit 1
fi
sleep 2
 sudo yum update -y
 sleep 2
 echo " let install java please wait ..."
 sleep 3
 sudo yum install java-11-openjdk-devel -y
 sudo yum install java-11-openjdk -y
 echo "let move to opt"
 sleep 2
 sudo cd /opt
 sleep 2
 echo "wget istallation"
 sleep 2
 sudo yum install wget -y
 sleep 2
 sudo wget https://binaries.sonarsource.com/distribution/sonarqube/sonarqube-9.3.0.51899.zip
 sleep 2
 echo "unzip installation"
 sleep 2
 sudo yum install unzip -y
 sleep 2
 echo "unzip the opt"
 sleep 2
 sudo unzip /opt/sonarqube-9.3.0.51899.zip
 sleep 2
 echo "let change the owner"
 sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
 sleep 2
 sudo cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
 sleep 2


echo " Installation successfull and thank you for your patient"
