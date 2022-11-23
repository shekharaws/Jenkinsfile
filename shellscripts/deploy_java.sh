#!/bin/bash
tag=$1
env=$2

IP=`grep $env env.properties | cut -d ':' -f2 |tr -d "[:space:]"`

mkdir /var/lib/jenkins/artifacts
cd /var/lib/jenkins/artifacts
aws s3 cp s3://my-bucket-ss/java-code//sparkjava-hello-world-1.0.war .
scp sparkjava-hello-world-1.0.war ec2-user@10.0.0.44:/home/ec2-user/tomcat/apache-tomcat-9.0.68/webapps
ssh ec2-user@10.0.0.44 << HERE
    rm -rf /home/ec2-user/tomcat/apache-tomcat-9.0.68/work
    cd /home/ec2-user/tomcat/apache-tomcat-9.0.68/bin/
    ./shutdown.sh
    ./startup.sh
HERE    