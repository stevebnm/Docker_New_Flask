# specify the image you want to use build docker image

FROM python:3.6

# Maintainer name to let people know who made this image.

#apt is the ubuntu command line tool for advanced packaging tool(APT) for sw upgrade '''

RUN apt update && \
    apt install -y netcat-openbsd

WORKDIR /app

COPY . /app
RUN pip3 install -r /app/requirements.txt

RUN chmod +x /app/docker-entrypoint.sh

CMD ["/bin/bash", "/app/docker-entrypoint.sh"]
