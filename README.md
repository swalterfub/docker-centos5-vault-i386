# centos5-i386-vault-epel

On March 31, 2017, support of CentOS 5 has ended.
And therefore, we cannot perform `yum` on CentOS 5 official images because yum repositories for CentOS 5 is deleted.
This image rewrites yum repository urls in /etc/yum.repos.d to vault.centos.org.
Additionally, it adds the Fedora EPEL repository and changes everything to i386 only.
You can use this image as drop-in replacement for `alanfranz/centos5-i386`.
