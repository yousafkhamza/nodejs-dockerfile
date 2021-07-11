# Nodejs Containeraisation (Docker)
[![Builds](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

---
# Description

It's a sample Dockerfile. Also, it's creating a small size container that includes nodejs with a sample hello world. Maybe it's helpful for beginners.

---

# Features

- It's a sample of a nodejs Dockerfile for image creating
- it's a very small size consumed odejs container (alpine OS)

---
# Pre-Requests

- Need to install docker on your machine 

---
# Installation 

- [Docker installtion]("https://docs.docker.com/engine/install/ubuntu/") 
- Pre-installed [docker terminal]("https://labs.play-with-docker.com/") for biginners and it used for lerning purpose.

---
# How to build a image with Dockerfile
_Steps:_
```sh
yum install docker -y
yum install git -y
git clone https://github.com/yousafkhamza/nodejs-dockerfile.git
cd nodejs-dockerfile
```
_building steps:_
```sh
docker build -t <your_image_name:tag> . 
#eg: docker build -t nodejs:1.1 .
docker image ls <------------------ image will list here
```

### Screenshots

_Downloading the docker file from Git and build a image_ 
![alt text](https://i.ibb.co/xqHf7m4/image-build-1.png)

_Build completed and image is created_
![alt text](https://i.ibb.co/yBRj2sk/image-build-2.png)

---
# How to build a Container from the image

_Stpes_

```sh
docker container run --name node -p 80:3000 -d nodejs:1.1
docker container ls  <--------- container listing with status
Argument explanation:
--name <----- Using for container name otherwise docker select a random name
-p     <----- Using port publish like our local port assign for that container it means localport forwards to docker container
-d     <----- Detach the container otherwise its try to enter the container
```
### Screenshots 

_Build a container from previously created image_

![alt text](https://i.ibb.co/C24qGWw/container-intilaze-from-image-and-its-up.png)

_Container running on 80 port and output_

![alt text](https://i.ibb.co/xqHf7m4/image-build-1.png)
![alt text](https://i.ibb.co/jwLzj4Q/output.png)

# _Additional Informations_

---
## _Push Image to Docker Hub (upload docker image to registry)_
_I have uploaded the same Docker image to [Docker hub]("https://hub.docker.com/"). Also, why we use docker hub it's a registry of docker and we can upload our image to docker hub and then we can download the image any system like a git hub_
### _Steps_
1. _How to login Docker hub_
```sh
docker login <----------- login with your credentials which you use in docker hub
```

_Docker Login_
![alt text](https://i.ibb.co/L8kRdz4/docker-login.png)

2. _Docker Push_
> _docker push is working with your docker hub username so you need to change the image name with your username_

```sh
docker tag nodejs:1.1  <your_username>/<image_name>:tag
docker push <your_username>/<image_name>:tag
# eg:
docker tag nodejs:1.1 yousafkhamza/nodejs:1.1        <------- tag is using for rename but the old image is alive but both are using same image id
docker push yousafkhamza/nodejs:1.1
```

_Docker tag and push_
![alt text](https://i.ibb.co/HzRxVCb/tag-and-push.png)

---

## _How to pull this image from Docker hub(Download image from registry)_
_Download image from Docker hub and it no needs to login docker hub._
```sh
docker pull <your_username>/<image_name>:tag
# eg:
docker pull yousafkhamza/nodejs:1.1
```

_Docker pull from Docker hub_
![alt text](https://i.ibb.co/gZkb9RD/pull.png)

---

# Docker File Explanation
```sh
FROM alpine:3.8               <-------- Base Image
RUN mkdir /var/node/          <-------- RUN is using for exicute shell command
WORKDIR /var/node/            <-------- Image working directory
COPY ./app.js ./              <-------- Copy node file to WD
RUN apk update
RUN apk add nodejs npm        <-------- nodejs and npm installtion
RUN npm init -y
RUN npm install express       <-------- nodejs module installtion 
EXPOSE 3000                   <-------- Just expose which port we use in container
ENTRYPOINT [ "node" ]         <--------- EntryPoint we using our image default command and if you need to change container runing time you can use "docker run --entrypoint sh <image>:tag" when you enter this your image default command is shell 
CMD [ "app.js" ]              <--------- CMD is working the same image default command but when you use ENTRYPOINT at that time this following entry point and it works as a argument of ENTRYPOINT eg: "node app.js"
```
---
# Conclusion

It's just a basic explanation for installing docker and how write Docker file and image and container building with a smallest nodejs. I hope you guys are understood. If you have any doubts regarding the Repo please ping me via LinkedIn.


### ⚙️ Connect with Me

<p align="center">
<a href="mailto:yousaf.k.hamza@gmail.com"><img src="https://img.shields.io/badge/Gmail-D14836?style=for-the-badge&logo=gmail&logoColor=white"/></a>
<a href="https://www.linkedin.com/in/yousafkhamza"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"/></a> 
<a href="https://www.instagram.com/yousafkhamza"><img src="https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white"/></a>
<a href="https://wa.me/%2B917736720639?text=This%20message%20from%20GitHub."><img src="https://img.shields.io/badge/WhatsApp-25D366?style=for-the-badge&logo=whatsapp&logoColor=white"/></a>
