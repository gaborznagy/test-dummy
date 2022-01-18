#!/bin/bash
set -x

dnf install -v -y dnf-plugins-core
result=$?

cat /etc/dnf/dnf.conf
cat /etc/yum.repos.d/*
cat /var/log/dnf.log
cat /var/log/dnf.librepo.log
cat /var/log/hawkey.log

cd /
tar -czvf /test/artifacts.tar.gz  /etc/dnf/dnf.conf /etc/yum.repos.d/* /var/log/dnf.log /var/log/dnf.librepo.log /var/log/hawkey.log

exit ${result}
