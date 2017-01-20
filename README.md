# jenkins-slave-dockerfile

This container can be used as a jenkins slave that can use the host Docker
daemon for building other containers by running `docker` or `docker-compose commands`. It uses [jnlp-slave](https://hub.docker.com/r/jenkinsci/jnlp-slave/) container.

## Setup jenkins

Go to Manage Jenkins > Manage Nodes > New Node, create a permanent agent, set
the	value "/var/jenkins" as the "Remote root directory", set the value
"Launch agent via Java Web Start" as the "Launch method" and click save.

## Run container

Run `docker build -t jenkins-slave .` to build the container.
Run `docker run -v /var/run/docker.sock:/var/run/docker.sock jenkins-slave -url http://jenkins-server:port <secret> <slave name>` to run it.
