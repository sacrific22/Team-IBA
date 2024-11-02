#!/bin/bash
apt-get update
apt-get install -y screen default-jre
useradd -m minecraft
su - minecraft -c "wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b0a/server.jar"
su - minecraft -c "echo 'eula=true' > eula.txt"
su - minecraft -c "screen -dmS minecraft java -Xmx1024M -Xms1024M -jar server.jar nogui"
