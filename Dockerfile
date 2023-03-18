FROM node
COPY . .
RUN npm install
RUN npm version
EXPOSE 3000
CMD ["node", "examples/hello-world/index.js"]
