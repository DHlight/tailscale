FROM tailscale/tailscale:latest
RUN apk add --no-cache tinyproxy supervisor
ADD ./supervisor.d /etc/supervisor.d
ADD ./etc/tinyproxy/tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

EXPOSE 8888

CMD ["/usr/bin/supervisord","-n", "-c", "/etc/supervisord.conf"]
