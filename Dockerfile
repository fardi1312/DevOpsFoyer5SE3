# Start with a base image containing Java runtime
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file from the Maven target directory to the container
COPY target/Foyer-2.0.3-SNAPSHOT.jar /app/Foyer-2.0.3-SNAPSHOT.jar

# Expose the port your app runs on (adjust if necessary)
EXPOSE 8089

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "Foyer-2.0.3-SNAPSHOT.jar"]