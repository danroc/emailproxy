FROM python:3.13.7-alpine

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt \
 && rm requirements.txt

ENTRYPOINT [ "emailproxy" ]
