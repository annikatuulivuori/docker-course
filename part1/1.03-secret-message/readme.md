# Exercise 1.3: secret message
## commands

```
docker run -d -it --name secret-message devopsdockeruh/simple-web-service:ubuntu
docker exec -it secret-message bash
tail -f ./text.log
```

secret message:
```
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```