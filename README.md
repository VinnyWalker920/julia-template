# Julia Webserver Template

This project provides a template for setting up a Dockerized Julia webserver. Currently no database, but this is just becuase I do not see a need to have one just yet. 

# Instructions

## Build Container

Builds docker container and then starts it
```
docker-compose up --build
```

## Edit/Manipulate Container
Access shell in container space
```
docker-compose exec julia-template bash
```