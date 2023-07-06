##FROM maven AS build-dependency
##WORKDIR /opt/app-dev
##COPY . .
##RUN mvn clean package -DskipTests
##
##FROM openjdk:17-oracle
##WORKDIR /opt/app-dev
##COPY --from=build-dependency opt/app-dev/release/*.jar .
##
##ENTRYPOINT java -jar /opt/app-dev/*.jar
FROM openjdk:17-oracle
COPY target/call-0.0.1-SNAPSHOT.jar call-0.0.1-SNAPSHOT.jar
ENTRYPOINT java -jar /call-0.0.1-SNAPSHOT.jar


