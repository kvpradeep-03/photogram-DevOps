#FROM is a baseimage ,from that base img we can create some applications
#WORKDIR creats a dir for working if not is creats a new one
#COPY is used to cp any files to the working dir like config files
#RUN used to run cmd ,instructions like apt upgrade ..
#BUILD cmd -> docker build -t app:test helloworld/. {'.' refers to Dockerfile}
#RUN cmd -> docker run -it app:test
#CMD instruction specifies the default command to run when a container is started. pid 1 will be to this line of running services                                                                                                                                                                                                                                                                                       
#docker don't intract with user via cmd while building so give necessary y/n options, which they prompt during building
#tag name that used to identify a docker image
#docker exec executes something in already running container.
FROM ubuntu
WORKDIR /usr/src/app 
RUN apt-get update && apt-get upgrade -y
RUN apt install htop bc -y
CMD ["/bin/bc","-i"]