FROM node:21.7.3-alpine3.19

RUN npm install -g @angular/cli
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200"]

WORKDIR /usr/src/app
COPY package.json /usr/src/app
COPY package-lock.json /usr/src/app

RUN npm install --legacy-peer-deps

COPY . /usr/src/app