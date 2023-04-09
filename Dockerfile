FROM python:alpine

COPY . .

RUN pip install --upgrade pip ; \
    pip install -r requirements.txt ; \
    apk update --no-cache ; \
    apk add --no-cache nginx

COPY ./nginx.conf /etc/nginx/http.d/default.conf

ENTRYPOINT "./entrypoint.sh"
