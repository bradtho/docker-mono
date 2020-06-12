  # BUILD
FROM golang:1.13.12-alpine AS build

ENV GO111MODULE=on

WORKDIR /app

ADD ./ /app

RUN apk update --no-cache && \
    apk add git && \
    rm -rf /var/cache/apk/*

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix -o golang-test  .

# RUNTIME
FROM gcr.io/distroless/static

COPY --from=build /app/golang-test /app/

EXPOSE 8000

ENTRYPOINT ["/app/golang-test"]