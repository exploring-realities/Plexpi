FROM  armv7/armhf-ubuntu:16.10

RUN apt-get update 

ADD . /dockerfolder

RUN bash /dockerfolder/install_plex_rpi.sh
EXPOSE 32400 

WORKDIR /plexmediaserver/

CMD service plexmediaserver restart && tail -f /dev/null
