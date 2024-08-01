FROM ubuntu:20.04
RUN apt update 
RUN apt install openjdk-17-jdk -y
RUN apt install maven -y
RUN apt-get clean  
WORKDIR /app
COPY ./app
RUN mvn clean install
EXPOSE 8079
CMD ["java", "-jar"," target/Demy-0.0.1-SNAPSHOT.war"]
