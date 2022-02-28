#!/bin/bash 

groupadd developer
groupadd admin
useradd -g developer Bob
mkdir -p /usr/local/networking
touch /usr/local/networking/routing.txt 

yum install docker
docker container create --name docker1 -p 80:8080 --restart unless-stopped nginx
docker container start docker01 
docker container create --name docker2 -p 80:8080 --restart unless-stopped nginx

mkdir -p /usr/local/links/
touch /usr/local/links/hardlinkme.txt
touch /usr/local/links/softlinkme.txt
mkdir -p /usr/local/links/hardlinks/
touch /usr/local/links/hardlinks/linknum 

mkdir -p /usr/backups
mkdir -p /usr/archive 
mkdir -p /srv/dns/
touch /srv/dns/dnsservice
touch /srv/dns/dns-service 

mkdir /raid 
touch /usr/raid-config

groupadd contractors
groupadd employees

mkdir -p /home/example
touch /home/example/file1
touch /home/example/file2
touch /home/example/file3
touch /home/example/file4
touch /home/example/file5
touch /home/example/file6
touch /home/example/file7
touch /home/example/file8
touch /home/example/file9
touch /home/example/file0

useradd Sue
chown Sue:admin /home/example/file*
chown Bob:admin /home/example/file0 
chmod 2000 /home/example/file8
chmod 2000 /home/example/file6 
fallocate -l 126M /home/example/file10
fallocate -l 512k /home/example/file11

mkdir -p /home/student/textreferences/
touch /home/student/textreferences/editme.txt 
echo "The roof, the roof, the roof is on fire,
The roof, the roof, the roof is on fire,
The roof, the roof, the roof is on fire,
We don't need no water let the thing burn,
Burn thing burn.

Hello my name is Jimmy Pop and I'm a dumb white guy,
I'm not old or new but middle school fifth grade like junior high,
I don't know mofo if y'all peeps be buggin' give props to my doe cause she all fly,
But I can take the heat cause I'm the other white meat known as 'Kid Funky Fried',
Yeah I'm kinda like planet Pluto hard to see with the naked eye,
But if I crashed into another I would where the sun don't shine,
Cause I'm kind of like Han Solo always stroking wookie Chewey,
I'm the root of all that's evil yeah but you can call me cookie,
The roof, the roof, the roof is on fire,
The roof, the roof, the roof is on fire,
The roof, the roof, the roof is on fire,
We don't need no water let the thing burn,
Burn thing burn.

Yo yo this hard-core ghetto gangster image takes a lot of practice,
I'm not black like Barry White no I am white like Frank Black is,
So if man is five and the devil is six than that must make me seven,
This donkey's gone to be helpin',
But if I go to taco bell then I hope I burn well,
I'll spend my days with J.F.K., Marvin Gaye, Martha Raye, and Lawrence Welk,
And Kurt Cobain, Kojak, Mark Twain and Jimi Hendrix's poltergeist,
And Webster yeah Emmanuel Lewis cause he's the man,
The roof, the roof, the roof is on fire,
The roof, the roof, the roof is on fire,
The roof, the roof, the roof is on fire,
We don't need no water let the thing burn,
Burn thing burn.

Everybody here we go,
Ohh Ohh,
C'mon party people,
Ohh Ohh,
Throw your hands in the air,
Ohh Ohh,
C'mon party people,
Ohh Ohh,
Wave 'em like you don't care,
Ohh Ohh,
C'mon party people,
Ohh Ohh,
Everbody say ho,
Ohh Ohh,
C'mon party people,
Ohh Ohh,
Everybody here we go" > /home/student/textreferences/editme.txt 

mkdir -p /usr/script/
touch /usr/script/sampleone.txt 
touch /usr/script/samplescript.sh
#**BASIC SCRIPT with STNDOUT**
touch /usr/script/sampletwo.txt 
touch /usr/script/samplescript2.sh 
touch /usr/script/samplethree.txt 

mkdir -p /srv/SAMPLE002
touch /srv/SAMPLE002/file1
touch /srv/SAMPLE002/file2
touch /srv/SAMPLE002/file3
touch /srv/SAMPLE002/file4
touch /srv/SAMPLE002/file5
touch /srv/SAMPLE002/file6
touch /srv/SAMPLE002/file7
mkdir -p /srv/SAMPLE002/dir1
touch /srv/SAMPLE002/file1.tar
touch /srv/SAMPLE002/file2.tar
chmod 777 /srv/SAMPLE002/file1
chmod 777 /srv/SAMPLE002/file2

mkdir -p /usr/sample/
touch /usr/sample/example.txt 
echo "Linux is cool" >> /usr/sample/example.txt
echo "It is cool to know Linux" >> /usr/sample/example.txt
echo "Wow this line has Linux in the middle" >> /usr/sample/example.txt
echo "Wow this line has Linux and yay" >> usr/sample/example.txt
echo "This is the last line yay" >> /usr/sample/example.txt 

mkdir -p /usr/diff/
touch /usr/diff/file1
touch /usr/diff/file2
touch /usr/diff/file3
touch /usr/diff/file4
touch /usr/diff/file5 
echo "yay" > /usr/diff/file1
echo "yay" > /usr/diff/file2
echo "yay" > /usr/diff/file3
echo "yay" > /usr/diff/file5
echo "oh no" > /usr/diff/file4 

mkdir -p /usr/diff/diff1
mkdir -p /usr/diff/diff2 
touch /usr/diff/diff1/file1
touch /usr/diff/diff1/file2
touch /usr/diff/diff1/file3
touch /usr/diff/diff2/file1
touch /usr/diff/diff2/file2
touch /usr/diff/diff2/file3 
touch /usr/diff/diff1/file9
touch /usr/diff/diff2/file0
echo "oh no" > /usr/diff/diff1/file9
echo "yay" > /usr/diff/diff2/file0

mkdir -p /usr/acl
touch /usr/acl/file.txt 
useradd Sue
touch /home/delete.me
chattr +i /home/delete.me 