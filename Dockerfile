FROM alanfranz/centos5-i386

COPY ./yum.repos.d/ /etc/yum.repos.d/

RUN rpm --import http://archive.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-5
