cd $HOME/cmake_repositories

for dir in *; do
  if [ -d "$dir" ]; then
    cd "$dir/build"
    sudo make uninstall
    cd ../..
  fi
done

sudo apt purge -y libboost-all-dev build-essential libtbb-dev libgflags-dev libgoogle-glog-dev libavcodec-dev libavformat-dev libswscale-dev
sudo apt purge -y unzip pkg-config libjpeg-dev libpng-dev libtiff-dev libvtk7-dev libgtk-3-dev libparmetis-dev libatlas-base-dev gfortran
sudo apt purge -y ffmpeg python3-dev python3-numpy libeigen3-dev libopencv-dev libopencv-contrib-dev

cd ..
sudo rm -rf cmake_repositories