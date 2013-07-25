#!/usr/bin/env sh

EMAIL=$1

aptitude install apt-cacher -y
touch /etc/salt/master.d/config.conf
echo "allowed_hosts = *" > /etc/salt/master.d/config.conf


if [ -z $EMAIL ]
then
service apt-cacher restart
exit 0
fi

echo "admin_email = $EMAIL" >> /etc/salt/master.d/config.conf
service apt-cacher restart
