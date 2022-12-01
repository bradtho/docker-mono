# Docker

This repo implements a multistage build Dockerfile which packages a simple webservice

## Building

To build the image we run the following command:

```bash
docker build -t service-1:latest .
```

## Running

To run the image we run the following command:

```bash
docker run -p 8001:8001 service-1:latest .
```

## Validating

To validate we can either use a browser or use `curl`:

```bash
curl -vvv http://localhost:8001/
```

If the server is running we should expect to see output similar to the following:

```bash
❯ curl -vvv http://localhost:8001/
*   Trying 127.0.0.1:8001...
* Connected to localhost (127.0.0.1) port 8001 (#0)
> GET / HTTP/1.1
> Host: localhost:8001
> User-Agent: curl/7.84.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200 OK
< Date: Thu, 01 Dec 2022 10:35:45 GMT
< Content-Length: 55
< Content-Type: text/plain; charset=utf-8
<
* Connection #0 to host localhost left intact
99 bottles of beer on the wall, 99 bottles of beer, ...%
```
