FROM jlesage/baseimage-gui:debian-11

ENV APP_NAME="TWGS"  \
    IDRAC_PORT=443      \
    DISPLAY_WIDTH=1024   \
    DISPLAY_HEIGHT=768   \
    KEEP_APP_RUNNING=1

# Install Wine
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wine-development win32-development && \

COPY startapp.sh /startapp.sh

LABEL \
  org.opencontainers.image.title="TWGS" \
  org.opencontainers.image.version="${VERSION}"