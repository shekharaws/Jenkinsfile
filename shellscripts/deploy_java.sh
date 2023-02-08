#!/bin/bash
tag=$1
env=$2

IP=`grep $env env.properties | cut -d ':' -f2 |tr -d "[:space:]"`

mkdir /var/lib/jenkins/artifacts
cd /var/lib/jenkins/artifacts
aws s3 cp s3://my-s3bbucket-00/java-code-1/$tag/sparkjava-hello-world-1.0.war .
scp sparkjava-hello-world-1.0.war ec2-user@${IP}:/home/ec2-user/apache-tomcat-9.0.71/webapps
 ssh ec2-user@${IP} << HERE
    rm -rf /home/ec2-user/apache-tomcat-9.0.71/work
    cd /home/ec2-user/apache-tomcat-9.0.71/bin/
    ./shutdown.sh
    ./startup.sh

HERE        