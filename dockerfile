FROM node:alpine

WORKDIR /app.js
COPY  . .

RUN npm install

CMD [ "node" , 'app.js' ]

