# Base image and working directory
FROM ubuntu:22.04
WORKDIR /usr/local/opencode/

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends curl wget git bash sudo nodejs npm

# Install Opencode - config is in bind mounts
RUN npm install -g "opencode-ai@latest"

CMD ["opencode"]
