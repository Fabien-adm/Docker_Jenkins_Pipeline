FROM nginx:latest
//COPY ./html /usr/share/nginx/html
RUN echo "<h1>Welcome Elias</h1>" > /usr/share/nginx/html/index.html
RUN sed -i 's/ginx/elias/g' /usr/share/nginx/html/index.html
EXPOSE 80
