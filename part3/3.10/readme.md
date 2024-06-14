# Exercise 3.10
*original Dockerfile is from exercise 1.15*
### original
```
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
original     before    0da701cd9c94   4 weeks ago   720MB
```

### optimized
```
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
optimized    after     4c337b0787a4   26 seconds ago   48.8MB
```
---
## Intallation

1. Clone repository
	```
	git clone https://github.com/annikatuulivuori/hello-world.git
	```

2. Go to project directory
	```
	cd hello-world
	```

3. Build docker image
	```
	docker build -t hello-world-app .
	```

4. Run docker container
	```
	docker run -it -p 5000:80 hello-world-app
	```

Test that the project is running by going to http://localhost:5000/

If app does not open in browser, try running `npm run build` before step 3.