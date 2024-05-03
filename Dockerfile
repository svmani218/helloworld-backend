FROM openjdk:17-jdk-alpine
LABEL authors="Seetha.Manikanta"

# RUN apt-get update -y && apt-get install curl ca-certificates -y
# COPY capsys_ca.crt /usr/local/share/ca-certificates/
# RUN update-ca-certificates
# RUN curl -o /opt/jdk-17.0.10_linux-x64_bin.tar.gz https://download.oracle.com/java/17/archive/jdk-17.0.10_linux-x64_bin.tar.gz && tar -xvzf /opt/jdk-17.0.10_linux-x64_bin.tar.gz -C /opt/ && mv /opt/jdk-17.0.10 /opt/javahome && cp /opt/javahome/bin/java /usr/bin/java
# COPY jdk.sh /etc/profile.d/jdk.sh
 
WORKDIR /helloworld
COPY helloworld/target/*.jar app.jar
CMD ["java","-jar","app.jar"]