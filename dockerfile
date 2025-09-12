FROM node:alpine

WORKDIR /app.js
COPY  . .

RUN npm insall

CMD [ "node" , 'app.js' ]

