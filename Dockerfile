FROM node:16
ENV TZ="Asia/Shanghai"
WORKDIR /app
COPY . /app/
# RUN mv config_example.json /app/config.json
RUN cd /app
RUN npm install --production --registry https://registry.npm.taobao.org
RUN npm run install-server
EXPOSE 3000
ENTRYPOINT [ "node server/app.js" ]