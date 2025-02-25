FROM osgeo/gdal:ubuntu-small-3.6.3

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt update -y && \
    apt install -y build-essential wget zlib1g-dev cmake pkg-config meson git libjemalloc-dev libyaml-cpp-dev libflint-dev libginac-dev ginac-tools 

WORKDIR /home

RUN wget https://home.bway.net/lewis/fermat64/ferl6.tar.gz && tar -xzf ferl6.tar.gz && rm ferl6.tar.gz && \
    mkdir kira jobs && cd kira && mkdir -p source build install && \
    cd source && \
    git clone https://gitlab.com/kira-pyred/kira.git && \
    cd kira && \
    meson setup /home/kira/build -Djemalloc=true && \
    cd /home/kira/build  && ninja && ninja install && \
    cd ../ && rm -rf source build

ENV FERMATPATH="/home/ferl6/fer64"
WORKDIR /home/jobs