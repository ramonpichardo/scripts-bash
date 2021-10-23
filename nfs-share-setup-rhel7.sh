# yum install nfs-utils libnfsidmap
# systemctl status rpcbind  (Is rpcbind service active? If not, turn it on:)
# systemctl start rpcbind
# systemctl status nfs-server 
# systemctl status nfs-lock  (Is nfs-lock service active? If not, turn it on:)
# systemctl start nfs-lock
# cd /
# mkdir nfsshare
# chmod 777 /nfsshare/
# vi /etc/exports

---
exports file:
# * - means global connections from anywhere
# Using an IP address/subnet mask only allows from one connection/subnet mask. E.g., 172.10.0.0/16.
/nfsshare      *(rw)
/nfsshare      192.168.0.0/16(rw)
---

# exportfs -r
# exportsfs -v

Firewall Configuration: Open mountd, nfs, rpc-bind
# systemctl enable nfs-server
# systemctl start nfs-server
# systemctl status nfs-server
# showmount -e 192.168.0.11
# mkdir /mnt/disk1
# mount 192.168.0.11:/nfsshare /mnt/disk1/
# cd /mnt/disk1
# touch aaa
# ls -l (--> Notice owner and group are "nfsnobody")
# vi /etc/fstab

---
192.168.0.11:/nfsshare   /mnt/disk1     nfs    sync    0 0
---

# mount -a
