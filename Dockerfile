FROM nginx:alpine

COPY linusromland.com.html /usr/share/nginx/html/index.html
COPY 403.html /usr/share/nginx/html/403.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
