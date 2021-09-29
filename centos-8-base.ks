eula --agreed
lang en_US.UTF-8
keyboard us
timezone --utc UTC
reboot

ignoredisk --only-use=sda
zerombr
clearpart --all
reqpart --add-boot
part swap --recommended
part / --fstype=xfs --grow

url --mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=BaseOS&infra=$infra
repo --name=AppStream --mirrorlist=http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=AppStream&infra=$infra

%packages
@core
@base
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
