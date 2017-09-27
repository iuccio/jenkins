# Jenkins
[Official Jenkins Docker image](https://github.com/jenkinsci/docker).

## How to install

We need the list of installed plugins to re-build and re-run our docker image with 
the already installed plugins.
To do this we need to get the list of installed plugins with the below [script](plugin.sh)
(See [Jenkins Installed Plugins List](http://www.noqcks.io/note/jenkins-plugins-list/)):

~~~bash
./plugin.sh
~~~

This script will generate the file [plugins.txt](plugins.txt).
This file is used in our [Dockerfile](Dockerfile) to install the plugins during the build of the image.
When the image is built we can run the new image.   

### Docker compose
Run Jenkins with docker-compose
~~~bash
docker-compose up
~~~

### Docker
Run Jenkins with docker
#### Build image
~~~bash
docker build -t nwb-jenkins:1.0.0 .
~~~
#### Run docker container
~~~bash
docker run -p 8080:8080 -p 50000:50000 -v content-folder:/var/jenkins_home nwb-jenkins:1.0.0
~~~

## Documentations
https://stackoverflow.com/questions/41266889/jenkins-2-override-plugins-txt
