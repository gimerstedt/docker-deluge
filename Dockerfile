from phusion/baseimage
maintainer rickard@gimerstedt.se

# use baseimage-docker's init system
cmd ["/sbin/my_init"]

run apt-get update; apt-get upgrade -y; apt-get install -y

run apt-get install -y deluged deluge-webui

# make directories for service-scripts
run mkdir /etc/service/deluged \
		&& mkdir /etc/service/deluge-web

# add service scripts
add deluged.sh /etc/service/deluged/run
add deluge-web.sh /etc/service/deluge-web/run

# clean up apt when done
run apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
