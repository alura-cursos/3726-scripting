FROM node:20
WORKDIR /app
COPY package* .
RUN npm install
COPY . .
RUN npm run build
CMD ["node", "dist/main.js"]
