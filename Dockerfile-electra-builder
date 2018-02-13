FROM ubuntu:xenial
LABEL maintainer="alediaferia@gmail.com"

RUN /bin/bash -c 'apt-get update; \
apt-get install -y libminiupnpc-dev qt5-default qt5-qmake qtbase5-dev-tools qttools5-dev-tools \
libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev \
libboost-test-dev libdb5.3++-dev git build-essential libssl-dev'

RUN /bin/bash -c 'useradd -m -s /bin/bash ecadev'
RUN /bin/bash -c 'gpasswd -a ecadev sudo'

USER ecadev
WORKDIR /home/ecadev
RUN pwd
