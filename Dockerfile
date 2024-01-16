FROM node:20

WORKDIR /app

COPY package*.json ./

# shell form command
RUN npm install

# copies everything 'here', from where 'docker build' is executed to the WORKDIR
COPY . .

ENV PORT=8080

EXPOSE 8080

# exec form command
CMD ["npm", "start"]