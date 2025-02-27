FROM nginx:latest
RUN sed -i 's/ginx/elyse/g' /usr/share/nginx/html/index.html
EXPOSE 80
