FROM node:latest

EXPOSE 3000

RUN mkdir -p /user/src/app

WORKDIR /user/src/app

COPY package.json package.json

RUN npm install

RUN npm cache clean --force

COPY . .

CMD ["node", "index.js"]

# docker image build -t irtiza07/node-tutorial .
# docker container run -p 80:3000 -d irtiza07/node-tutorial