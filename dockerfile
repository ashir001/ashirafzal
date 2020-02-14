from ubuntu

label maintainer="ashirjutt0@gmail.com"

run apt-get update

run apt-get -y install nodejs

run apt-get -y install npm

copy . https://github.com/naveed-rana/docker-assignment

workdir https://github.com/naveed-rana/docker-assignment

run npm install

expose 5000

entrypoint ["node","./server.js"]
