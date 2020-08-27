FROM node:12.16.3-alpine
ENV test=test

RUN apk add --no-cache make gcc g++ python
WORKDIR /app
COPY package* /app/
RUN npm install
COPY src /app/src
COPY public /app/public
EXPOSE 3000
CMD ["npm", "start"]