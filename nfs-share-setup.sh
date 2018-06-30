#!/usr/bin/env bash
# Enable an NFS share on a Mac
# Run this script with elevated privileges (i.e., sudo or as root)

# 1. Create a file named "exports" in directory /etc:
touch /etc/exports

# 2. Add the following string to the file /etc/exports:
echo "/Volumes/Storage02/video -network 192.168.0.0 -mask 255.255.255.0" > /etc/exports

# 3. Enable NFS:
nfsd enable

# 4. Verify which folders are being shared by NFS:
showmount -e
