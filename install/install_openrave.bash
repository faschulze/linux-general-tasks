#===================================================================================
#Install instructions for OpenRave in Ubuntu/Ubuntu Mate 14.04.2 x64
#===================================================================================
#Installing ODE and Bullet is Optional, must be downloaded and installed. This Instructions work for branches master & latest_stable.

#Info sources from:

#- OpenRave: http://openrave.org/docs/latest_stable/coreapihtml/installation_linux.html
#- André Dietrich: http://www.aizac.info/installing-openrave0-9-on-ubuntu-trusty-14-04-64bit/
#- Own Experience

#Tutorial made by Carlos Rubert: cescuder@uji.es

#Last Update 15 October, 2015

#Install Package Dependences
#---------------------------
#Some packages (like pkg-config) are required just in case your using Ubuntu Mate, so in Ubuntu are already installed:

sudo add-apt-repository ppa:openrave/testing
sudo apt-get install collada-dom2.4-dp*
sudo apt-get install libsoqt4-dev
sudo apt-get install cmake-curses-gui
sudo apt-get install build-essential -y
sudo apt-get install libboost-python-dev python python-dev python-numpy ipython python-sympy python-scipy
sudo apt-get install liblinearmath2.81
sudo apt-get install libpcre++-dev
sudo apt-get install libboost-all-dev
sudo apt-get install libassimp-dev
sudo apt-get install pkg-config

#Install Bullet (optional, needs version 2.80, ubuntu official repo has ver. 2.81)
#---------------------------------------------------------------------------------

sudo add-apt-repository ppa:joern-schoenyan/libbullet280
sudo apt-get install libbullet2.80
sudo apt-get install libbullet-dev=2.80\*

#Install Ode(optional, manually installed)
#-----------------------------------------
sudo apt-get install libode1 (then remove, just needed .so files)
wget https://bitbucket.org/odedevs/ode/downloads/ode-0.13.tar.gz
tar -zxvf ode-0.13.tar.gz 
cd ode-0.13/
./configure --enable-double-precision --enable-shared
make
sudo make install


#Installing Openrave
#-------------------
#Get latest source code:

git clone https://github.com/rdiankov/openrave.git


#Build and Install OpenRave:

cd openrave
mkdir build
cd build
ccmake .. [(c)onfigure & (c)onfigure & (g)enerate)]
make
sudo make install

#If you're using branch latest_stable, probably you'll get an error when compiling sources for bulletrave. This has been already solve in this issue by Stéphane Caron:

#- https://github.com/rdiankov/openrave/issues/333
