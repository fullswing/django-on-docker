# pull official base image
FROM nginx:1.21-alpine

# delete default configure
RUN rm -f /etc/nginx/conf.d/default.conf

# copy custom nginx cofigure to /etc/nginx
COPY deploy/app/nginx.conf /etc/nginx/conf.d