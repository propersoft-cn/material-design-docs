FROM ubuntu:trusty
MAINTAINER Alpha Hinex <AlphaHinex@gmail.com>
 
RUN apt-get update && apt-get -y install httrack 

ENV BASE /usr/local
WORKDIR $BASE
RUN httrack https://www.google.com/design/spec/  -O "/usr/local/websites/material-design-docs" 

EXPOSE 80
CMD python -m SimpleHTTPServer 80 
