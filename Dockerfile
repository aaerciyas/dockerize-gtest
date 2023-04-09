FROM ubuntu:jammy

WORKDIR /home/
RUN apt-get update
RUN apt-get -y install build-essential
COPY main.cpp .

RUN g++ -g main.cpp -o app

CMD ["./app"]