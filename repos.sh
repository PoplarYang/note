#!/bin/bash

function centos7() {
cat << EOF
# add below to /etc/yum.repos.d/

[base]
name=CentOS-$releasever - Base - mirrors.aliyun.com
failovermethod=priority
baseurl=http://mirrors.aliyun.com/centos/$releasever/os/$basearch/
        http://mirrors.aliyuncs.com/centos/$releasever/os/$basearch/
gpgcheck=0

[updates]
name=CentOS-$releasever - Updates - mirrors.aliyun.com
failovermethod=priority
baseurl=http://mirrors.aliyun.com/centos/$releasever/updates/$basearch/
        http://mirrors.aliyuncs.com/centos/$releasever/updates/$basearch/
gpgcheck=0

[extras]
name=CentOS-$releasever - Extras - mirrors.aliyun.com
failovermethod=priority
baseurl=http://mirrors.aliyun.com/centos/$releasever/extras/$basearch/
        http://mirrors.aliyuncs.com/centos/$releasever/extras/$basearch/
gpgcheck=0

[epel]
name=Extra Packages for Enterprise Linux 7 - $basearch
baseurl=http://mirrors.aliyun.com/epel/7/$basearch
gpgcheck=0
EOF
}

function ubuntu14() {
cat << EOF
# add below to /etc/apt/sources.list

deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse
deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main
deb http://openresty.org/package/ubuntu trusty main
EOF
}
function ubuntu16() {
cat << EOF
# add below to /etc/apt/sources.list

deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse
deb http://ppa.launchpad.net/ansible/ansible/ubuntu xenial main
deb http://openresty.org/package/ubuntu xenial main
EOF
}

function debian10() {
cat << EOF
# add below to /etc/apt/sources.list

deb https://mirrors.aliyun.com/debian  stable main contrib non-free
deb https://mirrors.aliyun.com/debian  stable-updates main contrib non-free
EOF
}

case $1 in
    centos7)
        centos7
        ;;
    ubuntu14)
        ubuntu14
        ;;
    ubuntu16)
        ubuntu16
        ;;
    debian10)
        debian10
        ;;
    *)
        debian10
        ;;
esac
