#!/bin/bash

function pypi() {
cat << EOF
[global]
index-url=https://pypi.douban.com/simple/
extra-index-url=http://mirrors.aliyun.com/pypi/simple/
        https://pypi.tuna.tsinghua.edu.cn/simple/
        http://pypi.mirrors.ustc.edu.cn/simple/
timeout=20
[install]
trusted-host=pypi.douban.com
        mirrors.aliyun.com
        pypi.tuna.tsinghua.edu.cn
        pypi.mirrors.ustc.edu.cn
[freeze]
timeout = 10
EOF
}

case $1 in
    pypi)
        pypi
        ;;
    *)
        pypi
        ;;
esac
