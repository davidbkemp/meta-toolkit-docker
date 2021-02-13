# Can't get meta to build on versions of Ubuntu more recent than 18 (xenial).
FROM ubuntu:xenial

RUN apt update
RUN apt-get update
RUN apt-get install -y g++ git cmake make libjemalloc-dev zlib1g-dev

RUN useradd -m meta
USER meta
WORKDIR /home/meta

RUN git clone https://github.com/meta-toolkit/meta.git
WORKDIR /home/meta/meta

# Fix problem with icu file not matching md5:
# See https://github.com/meta-toolkit/meta/pull/220/commits/6205e755519a5410b8083fe147cb4981d0935560
RUN sed -i 's/URL http:\/\/download.icu-project.org\/files\/icu4c\/58.2\/icu4c-58_2-src.tgz/URL https:\/\/github.com\/unicode-org\/icu\/releases\/download\/release-58-2\/icu4c-58_2-src.tgz/' CMakeLists.txt

RUN git submodule update --init --recursive
RUN mkdir build
WORKDIR /home/meta/meta/build

RUN cp ../config.toml .
RUN cmake ../ -DCMAKE_BUILD_TYPE=Release
RUN make

# RUN ./unit-test --reporter=spec


