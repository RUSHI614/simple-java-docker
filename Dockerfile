# stable official java runtime base image
FROM openjdk:17-jdk-alpine

# Creating a working directory
WORKDIR /app

# Copy all the files on the host to container

#COPY . .
COPY src/Main.java /app/Main.java

# Compile the java code
RUN javac Main.java

#Run the java app when the container starts
CMD ["java","Main"]
