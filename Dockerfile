# syntax=docker/dockerfile:1

FROM nginx
WORKDIR /jenkins-deploy/index.html
COPY index.html /usr/share/nginx/html
EXPOSE 8010
CMD ["nginx", "-g", "daemon off;"]