FROM golang:1.16-alpine

EXPOSE 8080

RUN adduser -S appuser && mkdir -p /usr/src/app && chown -R appuser /usr/src/app

WORKDIR /usr/src/app

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build && chown -R appuser /usr/src/app

USER appuser

CMD ["./server"]
