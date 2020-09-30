FROM python:3 as builder
WORKDIR /src/
COPY . /src
RUN pip install -r requirements.txt

EXPOSE 80
CMD ["python", "main.py"]