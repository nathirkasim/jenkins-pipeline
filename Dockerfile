FROM tomcat:9.0-jdk11-temurin

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR into Tomcat
COPY target/first-pipeline-project.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 5000

CMD ["catalina.sh", "run"]

