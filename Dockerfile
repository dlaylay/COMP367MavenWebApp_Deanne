FROM tomcat:9.0

# Copy the WAR file from target directory to the Tomcat webapps directory
COPY target/COMP367MavenWebApp_Deanne.war /usr/local/tomcat/webapps/COMP367MavenWebApp_Deanne.war

# Expose port 8080
EXPOSE 8080

#C:\Users\Lenovo\IdeaProjects\COMP367MavenWebApp_Deanne\target\COMP367MavenWebApp_Deanne.jar