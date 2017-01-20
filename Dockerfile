FROM jenkinsci/jnlp-slave

USER root

# install docker
RUN curl curl -sSL https://get.docker.com/ | sh

# install docker compose
RUN curl -L https://github.com/docker/compose/releases/download/1.10.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose


RUN usermod -G docker jenkins

RUN mkdir /var/jenkins

RUN chown -R jenkins /var/jenkins
RUN chgrp -R jenkins /var/jenkins

# USER jenkins
