#Pull base image

FROM ubuntu:latest

RUN apt-get update -y
#RUN apt-get install curl -y
#RUN apt-get install cmake3 -y
#RUN apt-get install sudo -y
#RUN curl --silent --location https://deb.nodesource.com/setup_10.x | sudo bash -
#RUN apt-get install -y nodejs
RUN apt-get install -y python-pip
RUN apt-get install -y python
RUN pip install Flask
#RUN apt-get install -y build-essentials

COPY . /home/

#BINDS TO PORT

EXPOSE 5000

WORKDIR /home/

#cmd python web.py

ENTRYPOINT ["/usr/bin/python"]

CMD ["web.py"]
