FROM node:alpine
RUN npm -g install npm
RUN npm -g install typescript

WORKDIR /app
RUN ls -laht
