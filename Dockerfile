FROM python:3.14.7-alpine@sha256:9e9fde4d32eedce0b661d9ab91e826b62dddf28e928c230ec55f1866cac66b01

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt \
 && rm requirements.txt

ENTRYPOINT [ "emailproxy" ]
