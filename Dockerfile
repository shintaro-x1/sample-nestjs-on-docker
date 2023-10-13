FROM node:18.18.1-slim

COPY ./dist/ /dist/
COPY ./package.json /package.json

RUN npm install --production

CMD ["node", "/dist/main.js"]

EXPOSE 3000
