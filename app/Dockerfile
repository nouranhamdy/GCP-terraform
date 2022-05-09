FROM python:3.7.2-alpine3.9
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
ENV export $(cat .env | xargs) 
CMD ["python","hello.py"]
