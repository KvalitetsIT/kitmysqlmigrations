FROM liquibase/liquibase:4.25


USER root
ADD https://repo1.maven.org/maven2/com/mysql/mysql-connector-j/8.0.33/mysql-connector-j-8.0.33.jar /liquibase/lib/mysql-connector-j.jar
RUN chmod 644 /liquibase/lib/mysql-connector-j.jar
USER liquibase


ENV LIQUIBASE_COMMAND_CHANGELOG_FILE=db/master.xml

COPY ./db /liquibase/db
WORKDIR /liquibase

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["update"]
