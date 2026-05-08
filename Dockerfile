FROM ubuntu:latest 
WORKDIR /app
RUN apt update && apt install nginx unzip curl wget -y      
RUN wget -O website.zip https://html5up.net/massively/download
RUN unzip website.zip
RUN cp -r assets images *.html /var/www/html/
CMD [ "nginx", "-g", "daemon off;" ]
