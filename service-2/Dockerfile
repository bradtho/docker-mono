#BUILD
FROM golang:1.18.8-alpine AS build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /service-2

EXPOSE 8001

ENTRYPOINT ["/service-2"]