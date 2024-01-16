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