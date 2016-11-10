FROM openjdk:8-jre

ENV FLYWAY_VERSION 4.0.3
ENV FLYWAY_HOME /code

RUN mkdir $FLYWAY_HOME && \
    curl -L https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/$FLYWAY_VERSION/flyway-commandline-$FLYWAY_VERSION-linux-x64.tar.gz | \
      tar xz -C $FLYWAY_HOME --strip-components 1

WORKDIR $FLYWAY_HOME

ENTRYPOINT ["./flyway"]
CMD ["--help"]
