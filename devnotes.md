# Docker

## Containers vs VMs

### Virtual Machinese

Software used to create separate environments on the same machines.

Problem:  

* Each VM needs a fully installed and operating OS.
* Slow to start.
* Resources intensive.

### Containers

* Shares the OS kernal.
* Lightweight.
* Faster to start, less resource intensive.
* Not as secure (sharing the same OS).

Architecture

Client --> Server (via REST API)

Server - called the docker engine (builds and runs docker containers).

Container is just a 'process' running on a computer.

## Images

* A slimmer version of OS.
* Runtime evironment (node, for ex).
* Application Files
* 3rd party libraries, etc..

We can then tell DOCKER to START the image using a CONTAINER.

## Workflow

Dev (create docker file in app, package Image file) ->

Registry (sort of like github but for Docker Images) ->

Test / production (can be deployed anywhere).

## Commands

To run a container from an image with exposed ports, do this:

`docker run -p 5000:8080 image_hash`

local = 5000
container = 8080

To create a volume:

### Create a named volume for user uploads

`docker volume create user-uploads`

### Run the web application container with the volume mounted
`docker run -v user-uploads:/app/uploads -p 8080:80 my-web-app`

/app/uploads will be created if it doesn't exist in the volume.

## Volumes

containers don't share information with other containers and they are lost when they are closed.  However, there is a way to share information by using volumes.  Different containers can mount the same volume, and they can share and store data in that volume.

Generally store:

* Config files
* logs
* user uploads