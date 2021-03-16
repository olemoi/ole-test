FROM python:3 as builder
WORKDIR /src/
COPY . /src
RUN pip3 install flask-restful

RUN groupadd -g 1000 ole
RUN useradd -u 1000 -g ole ole
# USER ole


EXPOSE 8080
USER 1000
CMD ["python3", "main.py"]
