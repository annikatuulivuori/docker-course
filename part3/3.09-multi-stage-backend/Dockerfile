FROM golang:1.16-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

RUN go build -o /usr/src/app/server && chmod +x /usr/src/app/server

FROM scratch

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:5000

COPY --from=build-stage /usr/src/app/server /usr/src/app/server

EXPOSE 8080

ENTRYPOINT [" /usr/src/app/server"]