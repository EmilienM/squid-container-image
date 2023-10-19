FROM quay.io/centos/centos:stream9-minimal
RUN dnf -y install squid; dnf clean all; systemctl enable squid;
RUN mkdir /etc/systemd/system/squid.service.d/; echo -e '[Service]\nRestart=always' > /etc/systemd/system/squid.service.d/squid.conf
EXPOSE 3128
CMD [ "/sbin/init" ]
