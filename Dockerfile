FROM node:9.4
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app/
RUN npm install
COPY . /app/
ENTRYPOINT [ "npm" ]
CMD [ "start" ]
