FROM nginx:alpine

COPY linusromland.com.html /opt/indexes/linusromland.com.html
COPY dashboard.html /opt/indexes/dashboard.html

COPY favicon.ico /usr/share/nginx/html/favicon.ico

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
