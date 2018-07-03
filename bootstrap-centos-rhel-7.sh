#!/usr/bin/env bash

# Enable third-party repositories
yum -y install epel-release
rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm

# Update a CentOS or Red Hat system
yum -y update && yum -y upgrade

# Install utilities
yum -y install gcc hdparm htop java lshw lsusb network-tools nmap openssl pciutils rkhunter speedtest-cli tcpdump p7zip vmstat webmin wget whois xfsprogs

# Install browsers
yum -y install links

# Install servers
yum -y httpd

# Install python
yum -y install python python-devel python-pip

# Install git
yum -y install git

# Install ansible
yum -y ansible

# Install terminal multiplexers
yum -y install tmux screen

# Restart the system
reboot
