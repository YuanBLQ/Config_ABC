# /bin/bash
echo 'backup repo file...'
cp /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
echo 'downloding repo file...'
# http://mirrors.aliyun.com/repo/Centos-6.repo
# http://mirrors.aliyun.com/repo/Centos-5.repo
wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
echo 'make cache...'
yum clean all
yum makecache
echo 'done ;)'