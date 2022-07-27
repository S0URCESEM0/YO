FROM debian:latest
	
RUN apt update && apt upgrade -y
RUN apt install git ffmpeg python3-pip -y
RUN pip3 install -U pip
RUN git clone https://github.com/perdark/per-sed/tree/master.git /root/sedthon
#working directory 
WORKDIR /root/sedthon
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
RUN pip3 install -U -r requirements.txt
CMD python3 sedthon.py
