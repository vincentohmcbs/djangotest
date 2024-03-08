FROM python:3.12-bookworm

WORKDIR /app/

RUN python -m pip install django gunicorn

COPY . .

ENTRYPOINT gunicorn -b 0.0.0.0:8000 djangotest.wsgi

EXPOSE 8000