FROM node
COPY . .
RUN npm install
RUN npm version
EXPOSE 3000
CMD ["node", "example/hello-world/index.js"]
