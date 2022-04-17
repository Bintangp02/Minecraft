FROM node:lts-buster

COPY package.json .
RUN npm install
RUN npm install pm2 -g
ENV PM2_PUBLIC_KEY wckctc2403tx929
ENV PM2_SECRET_KEY 7yg6gv2apd911uu
COPY . .

CMD ["pm2-runtime", "index.js"]
