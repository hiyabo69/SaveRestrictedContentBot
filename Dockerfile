FROM python:3.9.2-slim-buster

WORKDIR /app/
COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

RUN apt update; apt-get install -yy apache2

CMD ["bash","bash.sh"]
