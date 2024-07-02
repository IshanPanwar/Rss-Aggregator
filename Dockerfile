FROM python:latest

WORKDIR /app

COPY requirements.txt /

RUN pip install --no-cache-dir -r /requirements.txt

RUN mkdir /staticfiles

COPY rssagg /app

EXPOSE 8000

VOLUME /links

VOLUME /templates

VOLUME /static

ENTRYPOINT python manage.py collectstatic; python manage.py runserver 0.0.0.0:8000
