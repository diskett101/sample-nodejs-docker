FROM node:lts-alpine

# RUN apt-get update && apt-get upgrade -y

# RUN apt-get install git -y

ENV TZ=Asia/Singapore
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo $TZ > /etc/timezone

# RUN git config --global http.sslVerify false

RUN npm config -g set strict-ssl false

RUN npm install -g pm2 typescript

RUN echo "done test"
