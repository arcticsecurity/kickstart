# CentOS 7 Kickstart

1. Download the Minimal ISO from https://www.centos.org/download/
1. Boot using the ISO. For instruction on making USB media, see
   https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/installation_guide/sect-making-usb-media
1. Select *Install CentOS 7* and press Tab
    * Append the following to the boot options (short URL for [centos-7-base.ks](https://raw.githubusercontent.com/arcticsecurity/kickstart/master/centos-7-base.ks)): `ks=https://git.io/f4Q7E`
    * Press Enter to boot
1. Enter *8* and set the root password
1. Enter *b* to begin the installation

# CentOS 8 kickstart

1. Download the Boot ISO from https://www.centos.org/download/
1. Boot using the ISO. For instruction on making USB media, see
   https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/performing_a_standard_rhel_installation/assembly_creating-a-bootable-installation-medium_installing-rhel
1. Select *Install CentOS 8* and press Tab
    * Append the following to the boot options (short URL for [centos-8-base.ks](https://raw.githubusercontent.com/arcticsecurity/kickstart/master/centos-8-base.ks)): `ks=https://git.io/JzzMc`
    * Press Enter to boot
1. Enter *8* and set the root password
1. Enter *b* to begin the installation
