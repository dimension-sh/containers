FROM jlesage/baseimage-gui:debian-11

ENV APP_NAME="TWGS"  \
    IDRAC_PORT=443      \
    DISPLAY_WIDTH=1024   \
    DISPLAY_HEIGHT=768   \
    KEEP_APP_RUNNING=1

# Install Wine
RUN dpkg --add-architecture i386 && \
    wget -qO- https://dl.winehq.org/wine-builds/winehq.key | apt-key add - \
    apt install software-properties-common && \
    add-apt-repository 'deb https://dl.winehq.org/wine-builds/debian/ bullseye main' \
    apt-get update && \
    apt install --install-recommends winehq-stable

COPY ./apps/twgs/startapp.sh /startapp.sh

LABEL \
  org.opencontainers.image.title="TWGS" \
  org.opencontainers.image.version="${VERSION}"