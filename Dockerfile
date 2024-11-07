#FROM tomcat:9.0

# Expose port 8080
#EXPOSE 8080

# Copy the WAR file from target directory to the Tomcat webapps directory
#COPY target/COMP367MavenWebApp_Deanne.war /usr/local/tomcat/webapps/COMP367MavenWebApp_Deanne.war


# Use the official OpenJDK image for Java 17
FROM openjdk:17

# Expose port 8080 (or any other port your application listens on)
EXPOSE 8080

# Copy the JAR file into the Docker image
COPY target/COMP367MavenApp_Deanne.jar COMP367MavenApp_Deanne.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "/COMP367MavenApp_Deanne.jar"]
