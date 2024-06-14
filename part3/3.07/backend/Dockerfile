FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN adduser -S appuser && \
    go build && \
    chown -R appuser /usr/src/app

USER appuser

CMD ["./server"]
