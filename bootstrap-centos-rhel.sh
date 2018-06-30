#!/usr/bin/env bash
#Update a CentOS or Red Hat system
#Install necessary applications
#Restart the system
yum -y update && yum -y upgrade
yum -y install epel-release gcc hdparm htop httpd java links lshw lsusb nmap p7zip pciutils rkhunter speedtest-cli tcpdump vmstat webmin wget whois
yum -y install git python python-devel python-pip openssl ansible
yum -y install tmux screen xfsprogs
reboot
