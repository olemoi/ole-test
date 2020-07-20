FROM python:3 as builder
WORKDIR /src/
COPY . /src
RUN pip install -r requirements.txt

EXPOSE 8000
CMD ["python", "main.py"]