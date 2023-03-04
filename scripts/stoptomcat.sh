#!/bin/bash 
 
/opt/apache-tomcat-9.0.73/bin/shutdown.sh
# Copying the files.
if [ -f "/opt/apache-tomcat-9.0.73/webapps/" ]
then
  rm -rf /opt/apache-tomcat-9.0.73/webapps/javawebapp*
fi
cp -f  /tmp/target/javawebapp.war  /opt/apache-tomcat-9.0.73/webapps/
/opt/apache-tomcat-9.0.73/bin/startup.sh
