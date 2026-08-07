FROM python:3.14.7-alpine@sha256:f2186fc449b8f7aa5897b542777427a21dc77864f271cf4d1646361cf681c2b9

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt \
 && rm requirements.txt

ENTRYPOINT [ "emailproxy" ]
