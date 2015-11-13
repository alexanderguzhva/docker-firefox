FROM centos

RUN yum upgrade -y && yum install -y firefox dbus wget

RUN groupadd -f -g 1000 firefox && \
    adduser --uid 1000 --gid 1000 --create-home firefox && \
    chown firefox:firefox -R /home/firefox

RUN dbus-uuidgen > /etc/machine-id

# download ublock
RUN wget https://addons.mozilla.org/firefox/downloads/latest/607454/addon-607454-latest.xpi

# download noscript
RUN wget https://addons.mozilla.org/firefox/downloads/latest/722/addon-722-latest.xpi

# download random agent spoofer
RUN wget https://addons.mozilla.org/firefox/downloads/file/313188/random_agent_spoofer-0.9.5.2-fx.xpi

USER firefox

