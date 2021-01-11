FROM python:3 as builder
WORKDIR /src/
COPY . /src
RUN pip3 install flask-restful

EXPOSE 8001
CMD ["python3", "main.py"]