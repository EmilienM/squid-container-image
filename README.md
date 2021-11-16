[![Container Image CI](https://github.com/EmilienM/squid-container-image/actions/workflows/docker-image.yml/badge.svg)](https://github.com/EmilienM/squid-container-image/actions/workflows/docker-image.yml)

# squid-container-image
Simple container image to install Squid on CentOS Stream and expose 3128 port.
The image is built by podman and pushed on [quay.io](https://quay.io/repository/emilien/squid).


## How to use

### With default squid config

```
podman run -d --name=squid -p 3128:3128 quay.io/emilien/squid:latest
```

### With custom config

* Write your configuration file on the machine, e.g. in /var/lib/configs/squid/squid.conf.

* Run:

```
podman run -d --name=squid -p 3128:3128 -v /var/lib/configs/squid/squid.conf:/etc/squid/squid.conf:z quay.io/emilien/squid:latest
```

## To build the image yourself

```
podman build -t squid .
```
