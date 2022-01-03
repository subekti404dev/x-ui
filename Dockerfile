FROM ubuntu

WORKDIR /usr/local
ADD x-ui/ x-ui/

WORKDIR /usr/local/x-ui
RUN chmod +x x-ui
RUN chmod +x bin/xray-*
RUN cp x-ui.sh /usr/bin/x-ui && chmod +x /usr/bin/x-ui

VOLUME  [  "/etc/x-ui"  ]

EXPOSE  54321

CMD [ "/usr/local/x-ui/x-ui" ]
