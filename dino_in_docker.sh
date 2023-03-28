# To get permission to access display of host, do some steps first:

# sudo apt-get install xauth xorg openbox -> Install X11 server on your host machine
# Run the below command every time on start up
# xhost +local:docker -> Allow X11 connections from the Docker container

# Run the Docker container:
# docker run -it --name new-dino --privileged -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/home kalilinux/kali-rolling
# docker container exec -it new-dino-x bash

apt-get update && apt-get upgrade -y
apt-get -y install cmake -y
apt install build-essential -y
add-apt-repository ppa:vala-team
apt update

apt install cmake ninja-build valac gettext libgee-0.8-dev libsqlite3-dev libgtk-4-dev libadwaita-1-0 libgpgme-dev libsoup2.4-dev libgcrypt20-dev libqrencode-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libwebrtc-audio-processing-dev libsrtp2-dev libnice-dev glib-networking gstreamer1.0-plugins-good libsignal-protocol-c-dev -y
apt-get update && apt-get install -y dino-im -y

apt install git -y
git config --global user.email "email"
git config --global user.name "username"
ssh-keygen -t ed25519 -C "email@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
# cd /home/username/.ssh/

# git clone https://github.com/dino/dino.git
# git clone 
# cd dino
# ./configure
# make






