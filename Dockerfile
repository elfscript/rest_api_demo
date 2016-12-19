FROM aqitrade/flask-module 

ADD . /rest_demo

ENV PYTHONPATH=.:/rest_demo

EXPOSE 8000

CMD cd /rest_demo && python rest_api_demo/app.py 
