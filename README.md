docker-tailon
=============

An easy way to expose application logs via the web using the tailon project with all the advantages of a Docker container.

# Build The Image

Clone this repository or download the zip, then enter the root directory of the project and run the following command:

```
docker build --rm=true --tag="<username>/tailon" .
```

# Run The Container
First run a conatiner you want to capture the logs from. If your container was not given a name, grab the name and pass it to the Tailon container:

```
docker run -it --rm -p 8084:8084 -e "BASE=/PATH_TO_LOG /PATH_TO_LOG" --volumes-from CONTAINER_NAME akumor/tailon
```

or use tailon with logs on the host machine

```
docker run -it --rm -p 8084:8084 -e "BASE=/PATH_TO_LOG /PATH_TO_LOG" --volume=[HOST-DIR:]CONTAINER-DIR[:OPTIONS]]] CONTAINER_NAME akumor/tailon
```

Access the web console on port 8084

# Resources

https://github.com/gvalkov/tailon - tailon python project used for displaying logs through the web based interface
https://github.com/ipedrazas/docker-tailon - Forked from this project
https://hub.docker.com/r/library/python/ - Official repository for Python Docker image
