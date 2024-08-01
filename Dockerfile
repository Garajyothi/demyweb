FROM ubuntu:20.04
RUN apt update -y
RUN apt install openjdk-17-jdk -y
RUN apt install maven -y
WORKDIR /app
RUN mvn clean install
COPY ./app
EXPOSE 8079
CMD ["java", "-jar"," target/Demy-0.0.1-SNAPSHOT.war"]
