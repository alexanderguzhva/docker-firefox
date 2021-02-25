FROM ubuntu

RUN apt update && apt dist-upgrade -y && apt install -y firefox dbus wget && apt clean all

RUN dbus-uuidgen > /etc/machine-id
