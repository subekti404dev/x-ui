FROM  jrei/systemd-ubuntu
ENV  SHELL /bin/bash


WORKDIR /usr/local
RUN apt update
ADD x-ui/ x-ui/

WORKDIR /usr/local/x-ui
RUN cp x-ui.sh /usr/bin/x-ui && chmod +x /usr/bin/x-ui


VOLUME  [  "/etc/x-ui"  ]

EXPOSE  54321

CMD [ "/usr/local/x-ui/x-ui" ]