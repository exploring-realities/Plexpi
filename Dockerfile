FROM ubuntu:16.04 
WORKDIR /data
ADD . /data
RUN bash installscript.sh

EXPOSE 32400

CMD tail -f /dev/null 
