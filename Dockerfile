FROM apify/actor-node:18
COPY package*.json ./
RUN npm install
COPY . ./
RUN npm run build
RUN npm prune --omit=dev
CMD npm start
