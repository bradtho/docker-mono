#BUILD
FROM golang:1.19.3-alpine AS build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /service-1

EXPOSE 8001

ENTRYPOINT ["/service-1"]