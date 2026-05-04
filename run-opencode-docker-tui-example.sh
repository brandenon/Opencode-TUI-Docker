#!/bin/bash

# Runs docker with -interactive and -pseudoTTY flags
	# Bind mounts {localConfig}:{containerConfig} for config
	# Bind mounts {localShare}:{containerShare} for auth, etc
	# Bind mounts {workingDirectory}:{containerDirectory} for persistence, etc
	# Points to the image name

docker run -it \
	-v {your Opencode .config/opencode}:/root/.config/opencode \
	-v {your Opencode .local/share/opencode}:/root/.local/share/opencode \
	-v "$(pwd)":/usr/local/opencode/ \
	barndoon/opencode-tui
