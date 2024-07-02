FROM python:latest

WORKDIR /app

COPY requirements.txt /

RUN pip install --no-cache-dir -r /requirements.txt

COPY RSS-Aggregator/rssagg /app

EXPOSE 8000

VOLUME /links

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
