FROM ubuntu:trusty
MAINTAINER Alpha Hinex <AlphaHinex@gmail.com>
 
RUN apt-get update && apt-get -y install httrack python 

ENV BASE /usr/local
ENV WEB_BASE $BASE/websites/material-design-docs

WORKDIR $BASE
RUN httrack https://www.google.com/design/spec/  -O $WEB_BASE -%v +http://material-design.storage.googleapis.com/*.webm +http://material-design.storage.googleapis.com/*.png +http://www.gstatic.com/external_hosted/picturefill/picturefill.min.js

WORKDIR $WEB_BASE
EXPOSE 80
CMD python -m SimpleHTTPServer 80 
