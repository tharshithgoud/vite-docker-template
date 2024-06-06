FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

# Uses Node 22, latest version when this file is created.
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN /bin/bash -c 'source ~/.bashrc'

RUN apt-get update && apt-get install -y \
    nodejs \
    yarn \
    && rm -rf /var/lib/apt/lists/*

RUN node -v
RUN npm -v

WORKDIR /app

COPY ./ ./
RUN npm install -g vite

EXPOSE 5173

# CMD ["npm", "run", "dev", "--", "--host"]
# CMD ["ls", "-la"]

# docker build -t react-vite-app .

# docker run -p 5173:5173 -v $(pwd):/app react-vite-app
