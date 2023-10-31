
FROM python
WORKDIR /usr/app/src/  
COPY html /var/
COPY python/test1.py $WORKDIR

CMD ["python", "./test1.py"]




# FROM ubuntu
# RUN apt-get update
# RUN apt-get -y install nginx
# COPY html /var/
# RUN COPY /var/html /usr/share/nginx/html
# CMD ["echo", "Hello"]
