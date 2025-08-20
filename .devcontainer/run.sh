#!/bin/bash

sudo sysctl kernel.apparmor_restrict_unprivileged_userns=0

export LD_PRELOAD="$PWD/.devcontainer/ignore_badmatch.so"
/opt/GameMaker-Beta/GameMaker
