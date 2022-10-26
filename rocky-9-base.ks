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

url --mirrorlist=https://mirrors.rockylinux.org/mirrorlist?arch=$basearch&repo=BaseOS-$releasever
repo --name=AppStream --mirrorlist=https://mirrors.rockylinux.org/mirrorlist?arch=$basearch&repo=AppStream-$releasever

%packages
@core
@base
-abrt*
-firewalld*
-fprintd*
%end

%post
systemctl enable tmp.mount
%end
