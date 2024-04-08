FROM python:3.11.9-alpine3.19
WORKDIR /opt/app
ARG REDIS_HOST=${ip_redis}
COPY . .
EXPOSE 5000
ENTRYPOINT ["flask","run","--host=0.0.0.0"]