**devops-interview INSTALL**

rev 20190307.1 c3w

--

# macosx

**install**

[https://docs.docker.com/machine/](https://docs.docker.com/machine/)

--

**configure**

```
VBoxManage modifyvm "default" --natpf1 "devops1,tcp,,3000,,3000"

docker-machine start
eval $(docker-machine env)
```

**build and run**

```
docker build --no-cache  -t c3w/devops-interview .

docker run -itd -p 3000:3000 c3w/devops-interview
```

**test**

```
curl -v http://localhost:3000/ping
```

**results**

```
*   Trying 127.0.0.1...
* TCP_NODELAY set
* Connected to localhost (127.0.0.1) port 3000 (#0)
> GET /ping HTTP/1.1
> Host: localhost:3000
> User-Agent: curl/7.54.0
> Accept: */*
> 
< HTTP/1.1 200 OK
< X-Powered-By: Express
< Content-Type: application/json; charset=utf-8
< Content-Length: 20
< ETag: W/"14-vhoiTogBfSvRrotRUJaYj4LB9cY"
< Date: Thu, 07 Mar 2019 14:14:01 GMT
< Connection: keep-alive
< 
* Connection #0 to host localhost left intact
{"health":"healthy"}
```

{eof}::c3w