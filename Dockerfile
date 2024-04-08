FROM python:3.11.9-alpine3.19
WORKDIR /opt/app
ARG ip_redis
ENV REDIS_HOST=${ip_redis}
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["flask","run","--host=0.0.0.0"]