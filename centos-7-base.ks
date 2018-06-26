text
install
eula --agreed
lang en_US.UTF-8
timezone --utc UTC
selinux --disabled
reboot

ignoredisk --only-use=sda
zerombr
clearpart --all
reqpart --add-boot
part swap --recommended
part / --fstype=xfs --grow

url --mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=os&infra=$infra
repo --name=updates --mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates&infra=$infra

%packages
@core
@base
-NetworkManager*
-abrt*
-firewalld*
-fprintd*
iptables-services
%end

%post
systemctl enable iptables.service
systemctl enable ip6tables.service
systemctl enable tmp.mount
%end
