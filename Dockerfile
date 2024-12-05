FROM python:3.13.1-alpine

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt && rm /requirements.txt

ENTRYPOINT [ "emailproxy" ]
