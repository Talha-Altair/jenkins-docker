# Jenkins
```bash
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
```

Then add the following entry in your /etc/apt/sources.list:
```
deb https://pkg.jenkins.io/debian-stable binary/
```
```bash
sudo apt-get update && sudo apt-get install jenkins

sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

copy the password

open localhost:8080

do first time setup using the the above generated password

Let it auto select plugins

## Create new job
select freestyle project

## Add git url:
( have it public and add credentials)

## Add poll scm:
   create cron schedule using www.cronmaker.com // (* * * * *)

## Add build step:
   ### execute shell: 
      docker build -t my-flask-image:latest .
```bash
sudo groupadd docker

sudo groupadd docker

sudo usermod -aG docker jenkins

newgrp docker

sudo service jenkins restart
```

Make a new commit on git, wait for 1 min, jenkins will auto build

check docker images for a newly created image
```bash
$ docker run <image_name>
```

## *Voila!!*
