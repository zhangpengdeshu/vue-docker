FROM hub.c.163.com/library/nginx
MAINTAINER zhangpengdeshu@163.com
RUN rm /etc/nginx/conf.d/default.conf
ADD default.conf /etc/nginx/conf.d/
RUN npm run build
COPY dist/ /usr/share/nginx/html/
EXPOSE 80