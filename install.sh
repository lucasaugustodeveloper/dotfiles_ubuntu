#!/bin/sh

sudo apt install -y build-essential

bash install_programs.sh && \
bash install_sublime.sh && \
bash install_docker.sh && \
bash install_obs.sh && \
bash install_flutter.sh

