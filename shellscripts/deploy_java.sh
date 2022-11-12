#!/bin/bash
mkdir /var/lib/jenkins/artifacts
cd /var/lib/jenkins/artifacts
aws s3 cp s3://my-bucket-ss/java-code//sparkjava-hello-world-1.0.war .
scp sparkjava-hello-world-1.0.war ec2-user@10.0.0.44:/home/ec2-user/tomcat/apache-tomcat-9.0.64/webapps
ssh ec2-user@10.0.0.44 << HERE
    cd /home/ec2-user/tomcat/apache-tomcat-9.0.64/bin/
    ./shutdown.sh
    ./startup.sh
HERE    