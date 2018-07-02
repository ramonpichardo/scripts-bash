#!/usr/bin/env bash

OU="OU=Nix,OU=Servers,OU=_Production,DC=hq,DC=acme,DC=com"
OS="CentOS"
OSver="7"

function usage {
  echo -e "Joins the server to the OU:\n
  ${OU}\n
  Only one input parameter: a user name with rights to do so."
  exit
}

function join {
  echo -e "we are good\n"
}

[ -x /usr/sbin/adcli ] || exit 
[ -x /usr/bin/facter ] || exit

[ -z $1 ] && usage

/usr/sbin/adcli join --show-details --os-name="${OS}" --os-version="${OSver}" --domain-ou="${OU}" -U "$1"

/usr/sbin/authconfig --enablesssd --enablesssdauth --enablemkhomedir --update

systemctl restart sssd.service
