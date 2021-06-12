FROM alpine:3.8
RUN mkdir /var/node/
WORKDIR /var/node/
COPY ./app.js ./
RUN apk update
RUN apk add nodejs npm
RUN npm init -y
RUN npm install express
EXPOSE 3000
ENTRYPOINT [ "node" ]
CMD [ "app.js" ]
