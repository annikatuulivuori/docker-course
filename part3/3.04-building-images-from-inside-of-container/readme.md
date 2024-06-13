# Exercise 3.4: building images from inside of a container
## commands

```
docker run -e DOCKER_USER=username_here \
 -e DOCKER_PASSWORD=password_here \
 -v /var/run/docker.sock:/var/run/docker.sock \
 builder annikatuulivuori/express-app anskubansku/express-app
```