FROM node:lts

COPY docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

WORKDIR /build

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install application dependencies
RUN npm install

WORKDIR /app

# Workaround for inotify on WSL -- poll for file changes
ENV CHOKIDAR_USEPOLLING=true

ENV HOST=0.0.0.0
ENV PORT=4321

EXPOSE 4321

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["dev"]