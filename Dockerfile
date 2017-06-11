# Docker container running TShock 4.3.24
#
# Version 0.1

FROM mono:latest
LABEL maintainer "Olof Sjödin <me@olofsjodin.se>"
LABEL description "This image is used to start TShock."

RUN curl -sL https://github.com/NyxStudios/TShock/releases/download/v4.3.24/tshock_4.3.24.zip > /tmp/tshock.zip && unzip /tmp/tshock.zip -d /opt/tshock

WORKDIR /opt/tshock
VOLUME /opt/tshock/tshock

ENTRYPOINT ["mono", "./TerrariaServer.exe"]

EXPOSE 7777


