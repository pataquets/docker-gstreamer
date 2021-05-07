FROM pataquets/ubuntu:focal

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      gstreamer1.0-gl \
      gstreamer1.0-libav \
      gstreamer1.0-nice \
      gstreamer1.0-plugins-bad \
      gstreamer1.0-plugins-good \
      gstreamer1.0-plugins-ugly \
      gstreamer1.0-plugins-rtp \
      gstreamer1.0-rtsp \
      gstreamer1.0-tools \
      gstreamer1.0-vaapi \
      gstreamer1.0-x \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/
