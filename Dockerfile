# pull the official base image
FROM python:3.11.6-alpine

# set work directory
WORKDIR /usr/myapp

ADD requirements.txt . 
# means if requirements.txt changes then only build command install requirements.txt otherwise not

# install dependencies
RUN pip install -r requirements.txt

ADD . .

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000","--workers=3","app.wsgi:application"]

