# Exercise 1.5: size of image

```
$ docker image ls
REPOSITORY                          TAG       IMAGE ID       CREATED       SIZE
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   3 years ago   83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   3 years ago   15.7MB
```

## commands
```
docker run -d -it --name image_size_ex devopsdockeruh/simple-web-service:alpine
docker exec -it image_size_ex sh
tail -f ./text.log
```