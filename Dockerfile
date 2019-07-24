#++++++++++++++++++++++++++++++++++++++
# Ubuntu 14.04 PHP-Nginx Docker container
#++++++++++++++++++++++++++++++++++++++

FROM tomcat:latest

# Install nginx

# Deploy scripts/configurations
COPY /target/MicroserviceConfigServer-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps
CMD java -jar /usr/local/tomcat/webapps/MicroserviceConfigServer-0.0.1-SNAPSHOT.jar


EXPOSE 80
EXPOSE 443
EXPOSE 9090

#CMD ["supervisord"]
