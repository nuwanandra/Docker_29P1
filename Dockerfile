

# syntax=docker/dockerfile:1
FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY python/requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY python/app.py .
CMD ["flask", "run"]

# FROM python
# WORKDIR /usr/app/src/  
# COPY html /var/
# COPY python/test1.py $WORKDIR

# CMD ["python", "./test1.py"]




# FROM ubuntu
# RUN apt-get update
# RUN apt-get -y install nginx
# COPY html /var/
# RUN COPY /var/html /usr/share/nginx/html
# CMD ["echo", "Hello"]
