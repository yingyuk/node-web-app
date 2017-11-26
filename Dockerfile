FROM node:carbon

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm config set registry https://registry.npm.taobao.org/\
  && npm install --only=production

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
