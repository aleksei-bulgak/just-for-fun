FROM ubuntu:16.04

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get install -y lxde tightvncserver nano vim curl && \
	rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash pi

RUN mkdir -p /home/pi/.config/lxsession/LXDE && \
    chown -R pi:pi /home/pi/.config && \
    cp /etc/xdg/lxsession/LXDE/autostart /home/pi/.config/lxsession/LXDE/autostart

