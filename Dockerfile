# Use the base image with Java Servlet container
FROM tomcat:latest

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file into the container
Copy target/web-mvc-thymeleaf-myql-app.war web-mvc-thymeleaf-myql-app.war

# Expose the default port of the servlet container
EXPOSE 8080

# Set the startup command
CMD ["catalina.sh", "run"]
