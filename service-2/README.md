# Docker

This repo implements a multistage build Dockerfile which packages a simple webservice

## Building

To build the image we run the following command:

```bash
docker build -t dockertest:latest .
```

## Running

To run the image we run the following command:

```bash
docker run -p 8002:8002 dockertest:latest .
```

## Validating

To validate we can either use a browser or use `curl`:

```bash
curl -vvv http://localhost:8002/
```

If the server is running we should expect to see output similar to the following:

```bash
$ curl -vvv http://localhost:8002/  
*   Trying ::1...
* TCP_NODELAY set
* Connected to localhost (::1) port 8002 (#0)
> GET / HTTP/1.1
> Host: localhost:8002
> User-Agent: curl/7.64.1
> Accept: */*
> 
< HTTP/1.1 200 OK
< Date: Fri, 12 Jun 2020 11:11:40 GMT
< Content-Length: 55
< Content-Type: text/plain; charset=utf-8
< 
* Connection #0 to host localhost left intact
99 bottles of beer on the wall, 99 bottles of beer, ...* Closing connection 0
```
