FROM ubuntu:18.04

ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 

RUN echo "now building..."
RUN apt-get update
RUN apt-get install -y python3 \
            python3-distutils \
            curl
RUN apt-get update
RUN apt-get install -y git

RUN python3 -c "$(curl -fsSL https://raw.githubusercontent.com/platformio/platformio/develop/scripts/get-platformio.py)" 
ENV PATH $PATH:/root/.platformio/penv/bin
RUN echo $PATH
RUN pio lib --global install "arduino-libraries/Servo"