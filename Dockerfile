FROM liuchong/rustup:nightly

RUN apt-get update
RUN apt-get install -qq gcc-arm-linux-gnueabihf curl file sudo git gpg

COPY ./setupToolchain.sh /
RUN /setupToolchain.sh

# COPY ./checkInstallation.sh /
# RUN /checkInstallation.sh

ENV USER=root

WORKDIR /project
CMD 'make'
