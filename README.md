# Opencode-TUI-Docker
Open a containerized version of Opencode TUI in your working directory for development 

[See this image on Docker Hub here!](https://hub.docker.com/repository/docker/barndoon/opencode-tui)

This image builds Opencode TUI in a container for development. After you install and run Opencode locally (connecting providers, specifying other configs, etc), you can bind mount your configs to the container for a predictable environment that you don't need to set up every time.

# Run
The following command:
- Runs docker with -interactive and -pseudoTTY flags
	- Bind mounts {localConfig}:{containerConfig} for config
	- Bind mounts {localShare}:{containerShare} for auth, etc
	- Bind mounts {workingDirectory}:{containerDirectory} for persistence, etc
	- Points to the image name

```
docker run -it \
	-v {your Opencode .config/opencode}:/root/.config/opencode \
	-v {your Opencode .local/share/opencode}:/root/.local/share/opencode \
	-v "$(pwd)":/usr/local/opencode/ \
	barndoon/opencode-tui
```
Command can be saved as a one-liner alias or as a bash script. Navigate to your project as you would with Opencode TUI and run your alias/bash script and your project will open in an Opencode container!

# Layers
Image is based on Ubuntu 22.04 and pulls some basic tools (curl, wget, git, bash, sudo, nodejs, npm). 