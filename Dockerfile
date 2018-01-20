FROM node:8.8-alpine

COPY package.json /
RUN yarn install && rm package.json
ENV PATH /node_modules/.bin:$PATH

WORKDIR /code
COPY . /code
