FROM openjdk:8

LABEL maintainer=ian.tivey@citihub.com

# Install jq
RUN apt-get update -y \
  && apt-get install unzip -y \
  && apt-get install jq -y

RUN curl -o /home/cypher-shell.zip https://dist.neo4j.org/cypher-shell/cypher-shell-4.1.2.zip
RUN cd /home && jar xvf /home/cypher-shell.zip \
  && chmod 755 /home/cypher-shell/cypher-shell \
  && mv /home/cypher-shell/* /usr/local/bin
