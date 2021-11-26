FROM node:14-alpine
RUN mkdir -p /home/app
COPY ./* /home/app/
WORKDIR /home/app
RUN npm installCMD ["node", "index.js"]