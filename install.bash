#!/bin/bash

# configure dpkg
sudo dpkg --configure -a

# install git
sudo apt-get install git

# install openjdk 8 and set JAVA Home for openjdk 
# https://stackoverflow.com/questions/14788345/how-to-install-the-jdk-on-ubuntu-linux
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk
sudo apt install openjdk-8-jdk-headless 

# sudo apt-get install openjdk-8-source #this is optional, the jdk source code
apt-cache search jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=$PATH:/usr/lib/jvm/java-8-openjdk/bin

# install texteditors
sudo apt-get install vim
sudo apt-get install gedit
sudo apt-get install nano


# install htop
sudo apt-get install htop

# install keepass
sudo add-apt-repository ppa:jtaylor/keepass
sudo apt-get update
sudo apt-get install keepass2


# install LaTeX
sudo apt-get install texlive
sudo apt install texmaker

# install virtualbox with additional components
sudo apt-get install virtualbox					
sudo apt-get install virtualbox-dkms					
sudo apt-get install virtualbox-ext-pack				
sudo apt-get install virtualbox-guest-additions-iso			
sudo apt-get install virtualbox-qt

# install C++ compiler
sudo apt-get install g++


# checking javac and java version:
(git --version && javac --version && java --version && vim --version && tex --version && g++ --version) >> versions.txt



# TODO
# install tor browser: https://www.torproject.org/projects/torbrowser.html.en

