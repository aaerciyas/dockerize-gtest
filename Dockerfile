FROM ubuntu:jammy

WORKDIR /home/
RUN apt-get update
RUN apt-get -y install build-essential cmake libgtest-dev --no-install-recommends
RUN cmake /usr/src/gtest/CMakeLists.txt
RUN make -C /usr/src/gtest/
RUN cp /usr/src/gtest/lib/libgtest*.a /usr/lib

COPY hello_test.cc .

RUN cmake
RUN make

CMD ["./hello_test"]