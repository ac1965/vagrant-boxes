# FreeBSD 9.1

The base box for vagrant is built using packer.  Packer will output a vagrant box that will work with VirtualBox.  

## Add submodules

	git submodule init  
	git submodule update  

## Create base box with packer  

	cd packer/freebsd-91-amd64  
	packer build template.json  

## Add base box to vagrant and start machine  

	vagrant box remove freebsd-91  
	vagrant box add freebsd-91 packer_virtualbox_virtualbox.box  
	cd ../..  
	vagrant up  

