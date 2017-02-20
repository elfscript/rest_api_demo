FROM python:3-alpine

RUN mkdir -p /usr/src/rest_demo
WORKDIR /usr/src/rest_demo

COPY requirements.txt /usr/src/rest_demo/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/rest_demo

ENV PYTHONPATH=.:/usr/src/rest_demo

EXPOSE 8000

CMD cd /usr/src/rest_demo && python rest_api_demo/app.py
