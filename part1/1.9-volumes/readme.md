# Exercise 1.9: volumes
## commands
```
echo $nul > text.log
docker run -v "$(pwd)/text.log:/usr/src/app/text.log" devopsdockeruh/simple-web-service
```