mkdir /usr/local/source/
cd /usr/local/source/
apt-get update
sudo apt-get  -f -y install sudo
sudo apt-get  -f -y install vim
sudo apt-get  -f -y install git
sudo apt-get  -f -y install zip
sudo apt-get  -f -y install tar
sudo apt-get  -f -y install cmake
sudo apt-get  -f -y install g++

sudo apt-get -f -y install libglu1-mesa-dev freeglut3-dev mesa-common-dev
sudo apt-get -f -y install libeigen3-dev
sudo apt-get -f -y install libjpeg62-dev 
sudo apt-get -f -y install libtiff4-dev libjasper-dev
sudo apt-get -f -y install libpng-dev
sudo apt-get -f -y install libjsoncpp-dev
sudo apt-get -f -y install libboost-all-dev
sudo apt-get -f -y install libflann1.9

rm -rf VTK-8.0.1*
wget http://www.vtk.org/files/release/8.0/VTK-8.0.1.tar.gz
tar -xf VTK-8.0.1.tar.gz
cd VTK-8.0.1 
mkdir build 
cd build
cmake ..
make                                                                   
sudo make install

cd ../../

rm -rf pcl-1.8.1*
wget https://github.com/PointCloudLibrary/pcl/archive/pcl-1.8.1.tar.gz
tar -xf pcl-1.8.1.tar.gz
cd pcl-pcl-1.8.1 
mkdir build 
cd build
cmake ..
make
sudo make install

cd ../../

rm -rf opencv-3.3.1*
wget http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/3.3.1/opencv-3.3.1.zip
unzip opencv-3.3.1.zip
rm opencv-3.3.1.zip
cd opencv-3.3.1
mkdir build
cd build
cmake -D BUILD_NEW_PYTHON_SUPPORT=OFF -D WITH_OPENCL=OFF -D WITH_OPENMP=ON -D INSTALL_C_EXAMPLES=OFF -D BUILD_DOCS=OFF -D BUILD_EXAMPLES=OFF -D WITH_QT=OFF -D WITH_OPENGL=OFF -D WITH_VTK=OFF -D BUILD_PERF_TESTS=OFF -D BUILD_TESTS=OFF -D WITH_CUDA=OFF -D BUILD_opencv_gpu=OFF ..
make -j8
sudo make install
echo "/usr/local/lib" | sudo tee -a /etc/ld.so.conf.d/opencv.conf
sudo ldconfig
echo "PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig" | sudo tee -a /etc/bash.bashrc
echo "export PKG_CONFIG_PATH" | sudo tee -a /etc/bash.bashrc
source /etc/bash.bashrc
cd ../..



wget https://github.com/01org/tbb/releases/download/2018_U5/tbb2018_20180618oss_lin.tgz
tar -zvxf tbb2018_20180618oss_lin.tgz
rm -rf tbb2018_20180618oss_lin.tgz
mv tbb2018_20180618oss /usr/local/tbb
