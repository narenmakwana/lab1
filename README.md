ibmdemo - passw0rd
db2inst1    db2inst1

Lab1:
cd student/lab1
docker build -t simpleapp .

get a list of images: docker images | grep simpleapp

docker images | grep websphere-liberty

docker pull websphere-liberty:19.0.0.1-kernel

docker images | grep websphere-liberty

docker run --name=simpleC1 --hostname=localhost -d -p 81:9080 simpleapp

http://localhost:81/Simple
http://localhost:81/Snoop

docker run --name=simpleC2 --hostname=localhost -d -p 82:9080 simpleapp

http://localhost:82/Simple
http://localhost:82/Snoop

docker ps | grep simple
ibmdemo@ubuntuvm1:~$ docker ps | grep simple
e59ed88974e3        simpleapp                             "/opt/ibm/helpers/ru…"   About a minute ago   Up About a minute   9443/tcp, 0.0.0.0:82->9080/tcp   simpleC2
d4c798ffd8bc        simpleapp                             "/opt/ibm/helpers/ru…"   3 minutes ago        Up 3 minutes        9443/tcp, 0.0.0.0:81->9080/tcp   simpleC1
ibmdemo@ubuntuvm1:~$ 

ibmdemo@ubuntuvm1:~$ docker stop simpleC1
simpleC1
ibmdemo@ubuntuvm1:~$ docker stop simpleC2
simpleC2




