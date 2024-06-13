FROM docker:latest

WORKDIR /usr/src/app

RUN apk add --no-cache git bash

COPY script.sh .

RUN chmod +x script.sh

ENTRYPOINT ["./script.sh"]