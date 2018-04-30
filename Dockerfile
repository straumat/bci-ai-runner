# Container based on a debian that runs blockchain inspector artificial intelligence.
FROM i386/debian:jessie
MAINTAINER Stéphane Traumat, stephane.traumat@gmail.com

# Environment.
ENV DEBIAN_FRONTEND noninteractive
ENV NEO4J_HOSTNAME  neo4j
ENV NEO4J_PORT  7687
ENV NEO4J_USERNAME  neo4j
ENV NEO4J_PASSWORD  b2g135!
ENV RULE    1

# Debian configuration & util packages installation.
RUN apt-get update && \
    apt-get install -y apt-utils g++ make cmake freeglut3-dev libc6-dev mesa-common-dev mesa-utils-extra libgl1-mesa-dev libglu1-mesa-dev libglapi-mesa libxi-dev libxinerama-dev libxcursor-dev libxrandr-dev libxmu-dev libxi-dev libx11-dev xorg-dev

# Copy blockchain Inspector librairies.
ADD lib/libinspector.a /lib/libinspector.a
ADD lib/libneo4j-client.a /lib/libneo4j-client.a
ADD lib/libspirmemory.a /lib/libspirmemory.a

# Container volume configuration.
VOLUME /src

# Compile & execute.
COPY ./docker-entrypoint.sh /
RUN ["chmod", "+x", "/docker-entrypoint.sh"]
CMD ["/docker-entrypoint.sh"]