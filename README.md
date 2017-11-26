# 用 Docker 部署一个 Node.js web 应用

前置步骤 : \
[Docker 基础教程](https://github.com/yingyuk/docker-tutorial)

通过 Git 标签 , 分步骤阅读 :\
[Part1: Hello World](https://github.com/yingyuk/node-web-app/tree/v1.0.0)

## 运行镜像

```sh
docker run -p 8080:8080 -d yingyu/node-web-app:v1.0.0

docker ps
```

或者部署镜像

```sh
docker swarm init

docker stack deploy -c docker-compose.yml  yingyu

docker service ls
```

## 测试

```sh
$ curl -i localhost:8080

# 输出
HTTP/1.1 200 OK
X-Powered-By: Express
Content-Type: text/html; charset=utf-8
Content-Length: 12
ETag: W/"c-M6tWOb/Y57lesdjQuHeB1P/qTV0"
Date: Sun, 26 Nov 2017 03:52:14 GMT
Connection: keep-alive

Hello world
```
