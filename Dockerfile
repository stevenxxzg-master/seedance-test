FROM node:22-alpine
RUN apk add --no-cache ffmpeg
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --production
COPY server.js index.html index-zh.html ./
COPY 使用教程 ./使用教程
EXPOSE 10100
CMD ["node", "server.js"]
