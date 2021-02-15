FROM python:3 as builder
WORKDIR /src/
COPY . /src
RUN pip3 install flask-restful

RUN useradd -ms /bin/bash ole
USER ole

EXPOSE 8000
CMD ["python3", "main.py"]
