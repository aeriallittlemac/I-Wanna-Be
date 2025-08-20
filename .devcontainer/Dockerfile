FROM mcr.microsoft.com/devcontainers/base:noble

RUN export DEBIAN_FRONTEND=noninteractive \
&& apt-get update \
&& apt-get install -y build-essential openssh-server clang libssl-dev libxrandr-dev libxxf86vm-dev libopenal-dev libgl1-mesa-dev libglu1-mesa-dev zlib1g-dev libcurl4-openssl-dev ffmpeg libfuse2 curl pulseaudio file
# nproc
