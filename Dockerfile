FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
#copying from current directory to WORKDIR which is /usr/src/app
COPY . . 
EXPOSE 8080
CMD [ "npm", "start" ]
