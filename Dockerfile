# Container based on a debian that runs blockchain inspector artificial intelligence.
FROM debian:jessie
MAINTAINER Stéphane Traumat, stephane.traumat@gmail.com

# Environment.
ENV DEBIAN_FRONTEND noninteractive

# Debian configuration & util packages installation.
RUN apt-get update && \
    apt-get install -y apt-utils g++

# Copy blockchain librairies.

# Container volume configuration.
VOLUME /src

# Compile & execute.
COPY ./docker-entrypoint.sh /
RUN ["chmod", "+x", "/docker-entrypoint.sh"]
CMD ["/docker-entrypoint.sh"]