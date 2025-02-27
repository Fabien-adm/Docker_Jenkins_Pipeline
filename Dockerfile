FROM nginx:latest
RUN sed -i 's/ginx/xavki/g' /usr/share/nginx/html/index.html
EXPOSE 80
