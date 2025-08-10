#!/bin/bash

# Note: These installation steps may only work for IDE versions after 2024.600.

set -e

# IDE_VERSION="2024.1400.0.865"
IDE_VERSION="beta"

if [[ "$IDE_VERSION" == "beta" ]]; then
    wget 'https://gamemaker.io/en/download/ubuntu/beta/GameMaker.zip'
    GAMEMAKER_PACKAGE="GameMaker.deb"
    mv GameMaker.zip "$GAMEMAKER_PACKAGE"
else
    GAMEMAKER_PACKAGE="GameMaker-Beta-${IDE_VERSION}.deb"
    wget "https://download.opr.gg/${GAMEMAKER_PACKAGE}"
fi

# export DEBIAN_FRONTEND=noninteractive \
# && sudo apt-get update \
# && sudo apt-get install -y build-essential openssh-server clang libssl-dev libxrandr-dev libxxf86vm-dev libopenal-dev libgl1-mesa-dev libglu1-mesa-dev zlib1g-dev libcurl4-openssl-dev ffmpeg libfuse2 curl pulseaudio file
# nproc

# sudo sysctl kernel.apparmor_restrict_unprivileged_userns=0
# sudo echo "kernel.apparmor_restrict_unprivileged_userns = 0" >> /etc/sysctl.conf

sudo mkdir /opt/steam-runtime/
curl https://repo.steampowered.com/steamrt-images-scout/snapshots/latest-steam-client-general-availability/com.valvesoftware.SteamRuntime.Sdk-amd64,i386-scout-sysroot.tar.gz | sudo tar -xzf - -C /opt/steam-runtime/

wget https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
sudo install -m 0755 linuxdeploy-x86_64.AppImage /usr/local/bin/linuxdeploy
rm linuxdeploy-x86_64.AppImage

wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
sudo install -m 0755 appimagetool-x86_64.AppImage /usr/local/bin/appimagetool
rm appimagetool-x86_64.AppImage

sudo dpkg -i "$GAMEMAKER_PACKAGE"
rm "$GAMEMAKER_PACKAGE"
