#!/bin/bash

server_address='localhost'
server_port='8080'
username='admin'
password=''

echo "download jenkins-cli.jar"
curl $server_address:$server_port/jnlpJars/jenkins-cli.jar > jenkins-cli.jar

echo "Write plugin in plugins.txt"
java -jar jenkins-cli.jar -s http://${server_address}:${server_port} groovy --username ${username} --password ${password} = < plugins.groovy > plugins.txt