#!/usr/bin/env sh

SALTMASTER=$1

sed -i -e "s/deb cdrom/# &/" /etc/apt/sources.list
aptitude update
aptitude upgrade -y
aptitude install sudo -y
chmod +w /etc/sudoers
echo "%sudo ALL=NOPASSWD: ALL" >> /etc/sudoers
chmod -w /etc/sudoers
aptitude install tmux vim emacs23-nox emacs-goodies-el debian-el less git wget curl p7zip-full zsh ntpdate htop -y

sed -i -e "s/#PasswordAuthentication yes/PasswordAuthentication no/" $SSHD_CONFIG
service ssh restart

if [ -z $SALTMASTER ] 
then
exit 0
fi

aptitude install slat-minion -y
touch /etc/salt/minion.d/master.conf
echo "s/#master: salt/master: $SALTMASTER/" > /etc/salt/minion.d/master.conf

service salt-minion restart
