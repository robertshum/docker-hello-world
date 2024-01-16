FROM node:alpine
COPY . /app
WORKDIR /app
CMD node app.js

# FROM gets the base image from a existing source.  In this case, we are looking for apline linux with Node.

# COPY copies everything here (.) and places it into a /app folder.

# WORKDIR represents any command that we run will be inside here.  In this example, it's /app.

# When we run 'docker run hello-docker' it will execute this cmd.


# to build an image, go to the dir of the app then do:
# build -t name_of_image .
# note: dont forget the period at the end.
# note: if you want to deploy it to docker hub, include the user name.  Ex: shumbum/name_of_image