FROM jenkinsci/jnlp-slave

USER root
RUN curl curl -sSL https://get.docker.com/ | sh
RUN usermod -G docker jenkins

RUN mkdir /var/jenkins

RUN chown -R jenkins /var/jenkins
RUN chgrp -R jenkins /var/jenkins

# USER jenkins
