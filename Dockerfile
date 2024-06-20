# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Compile the Java program
RUN javac HelloWorld.java

# Define the command to run the Java program
CMD ["java", "-cp", "HelloWorld"]
