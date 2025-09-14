#!/bin/bash

export WSL_IP=$(hostname -I | awk '{print $1}')
echo "Starting Windows 11: ${WSL_IP}"

docker compose up -d
