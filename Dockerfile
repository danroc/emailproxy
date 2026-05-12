FROM python:3.14.5-alpine@sha256:7128d274340c3aa2e34596c7a62fff85de8f4d71d46731f9dbe3c0e2cfd9117c

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt \
 && rm requirements.txt

ENTRYPOINT [ "emailproxy" ]
