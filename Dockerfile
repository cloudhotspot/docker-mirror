FROM registry:2
MAINTAINER Justin Menga <justin.menga@gmail.com>

# Copy config file
COPY config.yml /etc/docker/registry/config.yml

# Volumes
VOLUME ["/var/run/registry"]

# Entrypoint
CMD ["/bin/registry", "serve", "/etc/docker/registry/config.yml"]