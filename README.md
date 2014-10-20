Vagrant-Environment
===================

The purpose of this repository is to quickly get new Ayamel employees working on code rather than dealing with miscellaneous software.

Instructions
============
 now go into vagrant and do some fixups through putty
 Username: vagrant
 Password: vagrant
 Port: 2222

 Add LAMP (equivalent to wamp):
 Run sudo tasksel 
 Navigate down to lamp and click spacebar
 enter a password when prompted

  Set-Up Database:
  mysql -u root -p
 root (or whatever your password is)
 CREATE DATABASE ayamel_examples;
 ctrl + c

 Make sure that your Ayamel-Examples is configured
 cd /vagrant/Ayamel-Examples
 sudo play -Dhttp.port=9006 -Dhttp.address=127.0.0.1 run

TODO
=====
Update Instructions
Add dependencies - Ayamel.js
Setup parts of the configuration files for the repos