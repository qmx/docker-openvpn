FROM alpine:3.10.3
RUN apk add --no-cache openvpn
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["openvpn", "--config", "/etc/openvpn/openvpn.conf"]
