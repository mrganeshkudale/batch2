FROM alpine:3
RUN apk add --no-cache python3 py3-pip
RUN python3 -m pip install Flask
RUN apk add curl
ADD app.py /
ENTRYPOINT ["/usr/bin/flask", "run", "--host=0.0.0.0"]
EXPOSE 5000/tcp
EXPOSE 5000/udp
