#!/bin/bash
mkdir /var/lib/jenkins/practice
cd /var/lib/jenkins/practice
aws s3 cp s3://my-bucket-ss/java-code//sparkjava-hello-world-1.0.war .
scp sparkjava-hello-world-1.0.war ec2-user@15.206.91.29:/home/ec2-user/tomcat/apache-tomcat-9.0.64/webapps
ssh ec2-user@11.0.0.107 << HERE
    cd /home/ec2-user/tomcat/apache-tomcat-9.0.64/bin/
    ./shutdown.sh
    ./startup.sh
HERE    