FROM alpine:3.13.5
ENV TERM=xterm-256color
COPY ./fan_control.sh /

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.7/community" >> /etc/apk/repositories  && \
    apk --update upgrade && \
    apk add  \
    bash \
    openssh-client \
    sshpass && \
    rm -rf /var/cache/apk/* && \
    chmod +x /fan_control.sh

ENV SSHPASS=pass_usuario
ENV USER=pass
ENV IP=0.0.0.0
ENV LO=2500
ENTRYPOINT /fan_control.sh