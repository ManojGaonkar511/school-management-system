# Use official Tomcat base image with Java
FROM tomcat:9.0-jdk17

# Remove default web apps (optional, for cleanliness)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file to Tomcat webapps directory
# (Assumes your WAR file is named `school-management-system.war`)
COPY SchoolManagementSystem.war /usr/local/tomcat/webapps/

# Expose default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
