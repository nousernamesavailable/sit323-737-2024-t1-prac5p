FROM node:16

# create app directory
WORKDIR /usr/src/app

#install dependencies
# wilcard used to ensure both package files are copied
COPY package*.json ./

RUN npm install
#bundle app source 
COPY calculatorwithlogger.js /usr/src/app

EXPOSE 8080

CMD [ "node", "calculatorwithlogger.json" ]