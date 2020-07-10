FROM node:12.0-alpine
COPY . .
RUN npm install
ENV MONGO_URL mongodb://mongo:27017/dev
EXPOSE 3000
CMD [ "node", "index.js" ]