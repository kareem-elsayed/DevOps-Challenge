FROM python:3.7-alpine
ADD . .
RUN pip3 install -r requirements.txt
CMD export $(cat .env_dev | xargs) && python3 hello.py
