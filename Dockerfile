FROM python:3.12.7-alpine

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt && rm /requirements.txt

ENTRYPOINT [ "emailproxy" ]
