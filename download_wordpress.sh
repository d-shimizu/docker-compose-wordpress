#!/bin/bash

apt-get update 
apt-get install wget unzip

wget http://wordpress.org/latest.zip -P /tmp
unzip -o /tmp/latest.zip -d ./

