FROM node

#sets the working directory for project
WORKDIR /usr/src/app

#copies package* file into pwd i.e. usr/src/app
COPY package*.json ./

RUN npm install

#same as ./ ./
COPY . .

#this port will be exposed to outside world (this is container port)
EXPOSE 4000

CMD [ "npm","start" ]