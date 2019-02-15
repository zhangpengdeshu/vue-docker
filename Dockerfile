FROM hub.c.163.com/library/nginx
MAINTAINER zhangpengdeshu@163.com
RUN rm /etc/nginx/conf.d/default.conf
RUN npm install
RUN npm run build
ADD default.conf /etc/nginx/conf.d/
COPY dist/ /usr/share/nginx/html/
EXPOSE 80