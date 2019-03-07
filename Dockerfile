FROM node:8.12.0-alpine

RUN apk add python3 python3-dev linux-headers libc-dev gcc make
RUN pip3 install --upgrade pip setuptools
COPY app.js requirements.txt start.sh package.json /var/www/
ADD bin /var/www/bin
ADD public /var/www/public
ADD routes /var/www/routes
WORKDIR /var/www
RUN npm install
RUN pip3 install -r requirements.txt
EXPOSE 3000
CMD ["/var/www/bin/www"]
