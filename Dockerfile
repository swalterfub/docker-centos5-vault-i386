FROM alanfranz/centos5-i386

#Adapted from castisdev/docker-centos5-i386
RUN sed -i 's/#baseurl=http:\/\/mirror.centos.org\/centos\/\$releasever/baseurl=http:\/\/vault.centos.org\/5.11/g' /etc/yum.repos.d/*
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/*
# Install EPEL repo
RUN yum install -y epel-release; yum -y clean all

RUN sed -i 's/\$arch/i686/g' /etc/yum.repos.d/*
RUN sed -i 's/\$basearch/i386/g' /etc/yum.repos.d/*

RUN yum install -y GMT
