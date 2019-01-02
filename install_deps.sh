mkdir /usr/local/source/
cd /usr/local/source/
apt-get update
apt-get  -f -y install sudo
apt-get  -f -y install vim
apt-get  -f -y install git
apt-get  -f -y install zip
apt-get  -f -y install tar
apt-get  -f -y install cmake
apt-get  -f -y install g++
apt-get  -f -y install libomp-dev

apt-get -f -y install libglu1-mesa-dev freeglut3-dev mesa-common-dev
apt-get -f -y install libeigen3-dev
apt-get -f -y install libjpeg62-dev 
apt-get -f -y install libtiff-dev
apt-get -f -y install libtiff5-dev
apt-get -f -y install libpng-dev
apt-get -f -y install libjsoncpp-dev
apt-get -f -y install libboost-all-dev

wget https://github.com/mariusmuja/flann/archive/1.8.5.tar.gz
tar -zvxf 1.8.5.tar.gz
cd flann-1.8.5
mkdir build 
cd build
cmake ..
make  -j18                                                              
make install

wget http://www.vtk.org/files/release/8.0/VTK-8.0.1.tar.gz
tar -xf VTK-8.0.1.tar.gz
cd VTK-8.0.1 
mkdir build 
cd build
cmake ..
make  -j18                                                              
make install

cd ../../


wget https://github.com/PointCloudLibrary/pcl/archive/pcl-1.8.1.tar.gz
tar -xf pcl-1.8.1.tar.gz
cd pcl-pcl-1.8.1 
mkdir build 
cd build
cmake ..
make -j18
make install

cd ../../


wget http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/3.3.1/opencv-3.3.1.zip
unzip opencv-3.3.1.zip
rm opencv-3.3.1.zip
cd opencv-3.3.1
mkdir build
cd build
cmake -D BUILD_NEW_PYTHON_SUPPORT=OFF -D WITH_OPENCL=OFF -D WITH_OPENMP=ON -D INSTALL_C_EXAMPLES=OFF -D BUILD_DOCS=OFF -D BUILD_EXAMPLES=OFF -D WITH_QT=OFF -D WITH_OPENGL=OFF -D WITH_VTK=OFF -D BUILD_PERF_TESTS=OFF -D BUILD_TESTS=OFF -D WITH_CUDA=OFF -D BUILD_opencv_gpu=OFF ..
make -j18
make install



cd ../../



wget https://github.com/01org/tbb/releases/download/2018_U5/tbb2018_20180618oss_lin.tgz
tar -zvxf tbb2018_20180618oss_lin.tgz
rm -rf tbb2018_20180618oss_lin.tgz
mv tbb2018_20180618oss /usr/local/tbb

rm -rf /usr/local/source/
