FROM python:3 as builder
WORKDIR /src/
COPY . /src
RUN pip3 install flask-restful

RUN groupadd -g 1000 ole
RUN useradd -u 1000 -g ole ole
# USER ole


FROM scratch
COPY --from=builder /src /src
COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /usr/local/bin /usr/local/bin
EXPOSE 8080
USER 1000
CMD ["sleep", "999999999999"]
