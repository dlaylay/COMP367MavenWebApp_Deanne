# Use OpenJDK 19 as the base image
FROM openjdk:19

# Expose port 8081 for the application
EXPOSE 8081

# Add the JAR file from the target directory to the root of the image
ADD target/COMP367MavenWebApp_Deanne.jar COMP367MavenWebApp_Deanne.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "/COMP367MavenWebApp_Deanne.jar"]
