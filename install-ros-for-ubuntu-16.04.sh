sudo sh -c '. /etc/lsb-release && echo "deb http://mirrors.tuna.tsinghua.edu.cn/ros/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654;
if [!$? -eq 0]
then
	sudo apt-key adv --keyserver 'hkp://pgp.mit.edu:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654;
fi
sudo apt update
sudo apt install -f -y python-rosdep
sudo apt install -f -y ros-kinetic-desktop-full
sudo rosdep init
rosdep update
sudo apt install -f -y python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt install -f -y rosbash
sudo apt install -f -y ros-kinetic-ros-tutorials
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install -f -y ros-kinetic-rqt ros-kinetic-rqt-common-plugins ros-kinetic-turtlesim
sudo apt-get install -f -y ros-kinetic-moveit ros-kinetic-moveit-resources
