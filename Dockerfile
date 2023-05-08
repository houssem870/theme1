FROM node:16-alpine 

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json /app/package.json
RUN npm install -g npm@9.6.6
RUN npm install -g @angular/cli@15.1.2

COPY . /app

CMD ng serve --host 0.0.0.0 --disable-host-check
