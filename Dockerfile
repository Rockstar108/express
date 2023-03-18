FROM node
COPY . .
RUN npm install
RUN npm version
CMD node example/hello-world/index.js
EXPOSE 3000
