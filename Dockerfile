FROM  amazonlinux:2023

RUN dnf install -y nginx && dnf clean all 

COPY index.html /usr/share/nginx/index.html

CMD [ "nginx","-g","daemon off;" ]
