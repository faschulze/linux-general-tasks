#!/bin/bash

# install openjdk 8 and set JAVA Home for openjdk 
# https://stackoverflow.com/questions/14788345/how-to-install-the-jdk-on-ubuntu-linux
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk
sudo apt install openjdk-8-jdk-headless 

# sudo apt-get install openjdk-8-source 
#this is optional, the jdk source code
apt-cache search jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=$PATH:/usr/lib/jvm/java-8-openjdk/bin

# checking javac and java version:
(javac --version && java --version) >> JAVAversions.txt
