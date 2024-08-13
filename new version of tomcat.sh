#!/bin/bash

# Install Java 11 (OpenJDK) on Ubuntu
sudo apt update  # Update package lists (recommended)
sudo apt install openjdk-11-jdk -y  # Install Java 11 OpenJDK

# Download Tomcat 9.0.65 (latest stable version at the time of writing)
# **Verify the URL on the official Tomcat download page:**
# https://tomcat.apache.org/tomcat-9/downloads.html
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.tar.gz
# Extract

# Secure Tomcat User (Recommended)
# **It's highly recommended to create a dedicated user for Tomcat and grant appropriate permissions instead of using the default "tomcat" user with password in tomcat-users.xml.**

# Configure Tomcat Manager (Optional)
# **If you need the Tomcat Manager application for remote management, uncomment the following lines in apache-tomcat-9.0.65/conf/tomcat-users.xml (assuming a user named "tomc
sed -i '21d' apache-tomcat-9.0.93/webapps/manager/META-INF/context.xml
sed -i '22d'  apache-tomcat-9.0.93/webapps/manager/META-INF/context.xml
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-9.0.93/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-9.0.93/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="raham123" roles="manager-gui, manager-script"/>' apache-tomcat-9.0.93/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-9.0.93/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-9.0.93/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-9.0.93/webapps/manager/META-INF/context.xml
sed -i '22d'  apache-tomcat-9.0.93/webapps/manager/META-INF/context.xml
sh apache-tomcat-9.0.93/bin/startup.sh
~
