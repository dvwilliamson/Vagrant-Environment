#!/bin/bash
# Get environment set up

sudo apt-get update
sudo apt-get install git
sudo apt-get update
sudo apt-get -y install curl git vim
sudo apt-get install -y openjdk-7-jdk
sudo apt-get install -y scala
sudo apt-get install -y ffmpeg
sudo tasksel install lamp-server # I don't think this actually works

sudo apt-get install unzip
wget http://downloads.typesafe.com/play/2.1.0/play-2.1.0.zip
sudo unzip play-2.1.0.zip -d /
echo 'PATH=${PATH}:/play-2.1.0' >> /etc/profile
sudo apt-get update

cd /vagrant
git clone https://github.com/BYU-ARCLITE/PlayGraph.git
git clone https://github.com/BYU-ARCLITE/Ayamel-Examples.git
git clone https://github.com/BYU-ARCLITE/DictionaryLookup.git

echo sudo play -Dhttp.port=9003 -Dhttp.address=localhost run >> /vagrant/Playgraph/start
echo sudo play -Dhttp.port=9006 -Dhttp.address=localhost run >> /vagrant/Ayamel-Examples/start
echo sudo play -Dhttp.port=9010 -Dhttp.address=localhost run >> /vagrant/DictionaryLookup/start

# now go into vagrant and do some fixups through putty
# Username: vagrant
# Password: vagrant
# Port: 2222

# Add LAMP (equivalent to wamp):
# Run sudo tasksel 
# Navigate down to lamp and click spacebar
# enter a password when prompted
#
#  Set-Up Database:
#  mysql -u root -p
# root (or whatever your password is)
# CREATE DATABASE ayamel_examples;
# ctrl + c
#
# Make sure that your Ayamel-Examples is configured
# cd /vagrant/Ayamel-Examples
# sudo play -Dhttp.port=9006 -Dhttp.address=127.0.0.1 run