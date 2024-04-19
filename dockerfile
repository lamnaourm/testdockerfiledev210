FROM ubuntu

WORKDIR /app

RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN apt-get clean

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD npm start