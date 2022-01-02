FROM  jrei/systemd-ubuntu
ENV  SHELL /bin/bash


WORKDIR /usr/local
RUN apt update
ADD x-ui/ x-ui/

WORKDIR /usr/local/x-ui
RUN chmod +x x-ui
RUN chmod +x bin/xray-*
RUN cp x-ui.sh /usr/bin/x-ui && chmod +x /usr/bin/x-ui
RUN cp -f x-ui.service /etc/systemd/system/
RUN systemctl daemon-reload
RUN systemctl enable x-ui
RUN systemctl start x-ui

VOLUME  [  "/etc/x-ui"  ]

EXPOSE  54321
