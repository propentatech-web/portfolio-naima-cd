FROM propentatech/portfolios-formation-dev-web2026:latest

RUN mkdir -p /usr/share/nginx/html/portfolio-naima-cd/
RUN rm -rf /usr/share/nginx/html/portfolio-naima-cd/*

COPY . /usr/share/nginx/html/portfolio-naima-cd/

RUN sed -i 's|root   /usr/share/nginx/html;|root   /usr/share/nginx/html/portfolio-naima-cd;|g' /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
