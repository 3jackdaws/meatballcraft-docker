FROM openjdk:8-jdk-slim

RUN mkdir /mc && mkdir /server

RUN apt-get update && apt-get install -y screen libarchive-tools wget

RUN wget -qO server.zip https://www.curseforge.com/api/v1/mods/411966/files/5842863/download && bsdtar xvf server.zip --strip-components=1 -C /server

ADD docker-entrypoint.sh .

VOLUME /mc
EXPOSE 25565
ENTRYPOINT bash docker-entrypoint.sh
