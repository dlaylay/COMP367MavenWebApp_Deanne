FROM tomcat:9.0

# Expose port 8080
EXPOSE 8080

# Copy the WAR file from target directory to the Tomcat webapps directory
COPY target/COMP367MavenWebApp_Deanne.war /usr/local/tomcat/webapps/COMP367MavenWebApp_Deanne.war
