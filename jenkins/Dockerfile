FROM jenkins/jenkins:lts

USER root

# Installer Docker CLI
RUN apt-get update && apt-get install -y docker.io

# Exposer le port 8083
EXPOSE 8083

# Configurer Jenkins pour écouter sur le port 8083
ENV JAVA_OPTS="-Djenkins.port=8083"

# Installer les plugins Jenkins nécessaires
# RUN jenkins-plugin-cli --plugins \
#     git \
#     pipeline \
#     docker \
#     docker-workflow \
#     workflow-aggregator \
#     blueocean \
#     matrix-auth \
#     job-dsl \
#     credentials-binding \
#     github-branch-source \
#     role-strategy

USER jenkins

# Copier les scripts additionnels
COPY scripts /usr/share/jenkins/ref/scripts
