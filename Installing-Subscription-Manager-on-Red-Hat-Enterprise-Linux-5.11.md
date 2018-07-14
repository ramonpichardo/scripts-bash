Installing Subscription Manager on Red Hat Enterprise Linux 5.11
1. Edit the server’s virtual machine settings:
		a. Under the Virtual Hardware option "CD/DVD drive 1", choose "Datastore ISO File" from the drop-down menu
		b. Search for the ISO file on an accessible datastore
	i. [datastore name] ISO/rhel-server-5.11-x86_64-dvd.iso
		a. Select “Connect At Power On”
		b. Select “Connected”
		c. Click OK
2. Connect to the server via SSH
3. Perform the following commands on the server:
		a. Upgrade the server offline with ISO and Yum
	i. $ su –
	ii. # mount -t iso9660 /dev/cdrom /media
	iii. # cd /media/Server
	iv. # head -n1 .discinfo
						· Copy the identification number (media id) of the ISO image. In our case it is: 1409145026.642170
	v. # ls /etc/yum/repos.d/
	vi. # touch /etc/yum.repos.d/rhel5.repo
	vii. # vi /etc/yum.repos.d/rhel5.repo
						· Add and save the following lines to the file:
			· [rhel5-Server] 
			· mediaid=1409145026.642170 
			· name=RHEL5-Server
			· baseurl=file:///media/Server 
			· gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release 
			· enabled=1 
			· gpgcheck=1
	viii. # yum update
	ix. # yum install subscription-manager
	x. # cd
	xi. # umount /media
	xii. # rm /etc/yum.repos.d/rhel5.repo
	xiii. # which subscription-manager
						· Result : /usr/sbin/subscription-manager
		a. Register and attach a system to Red Hat Subscription Management via Subscription Manager Command Line 
	xiv. # subscription-manager register --username <username> --password <password> --auto-attach
						· Response: “The system has been registered with ID: ##abcdef-#g##-#h##-####-#######ij##k”
		a. Append RHSM Subscription to System
		b. Install missing Red Hat Product Certificate
	xv. Select Product: Red Hat Enterprise Linux Server
	xvi. Version: 5.11
	xvii. Architecture: x86_64
	xviii. Click the link “Generate“ (red box, white letters)
	xix. Create directory /etc/pki/product/.
						· # mkdir -p /etc/pki/product/
	xx. Download file “69.pem” and save it in directory /etc/pki/product/.
	xxi. Change the permission and ownership of this file:
						· # restorecon -Rv /etc/pki/product
						· # chown root.root /etc/pki/product/69.pem
						· # chmod 644 /etc/pki/product/69.pem
						· # rct cat-cert /etc/pki/product/69.pem
	xxii. Register your system:
						· # subscription-manager register --auto-attach
						· # subscription-manager refresh
						· # subscription-manager identity
	xxiii. Verify repolist is for RHEL 5
						· # yum repolist
		a. Check for latest available updates
	xxiv. # yum check-update
	xxv. # yum list updates
		a. To update packages, enter:
	xxvi. # yum update
