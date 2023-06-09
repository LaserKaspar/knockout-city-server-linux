# Knockout City on Linux (using WINE)

This project aims to make the deployment for Knockout City on Linux Servers easier! As this uses wine, the server needs a little more system resources that running natively on windows.

## Automatic start script using docker.

This is the reccomended way to quickly start the server.

1. clone this repository & cd <!--TODO: More info-->
2. run ``chmod +x automatic-start.sh``
3. ``run automatic-start.sh``

## Manual Installation

### postgresql & redis

1. Clone this repository
2. Start /postgres/docker-compose.yml and /redis/docker-compose.yml

### Setup the Server

1. [Download](https://chonky-delivery-network.akamaized.net/KnockoutCity-Server-10.0-269701.zip) KOCity Private Server from the [official website](https://www.knockoutcity.com/private-server-edition).
2. Unarchive it and put KnockoutCityServer.exe and data.zip inside the KnockoutCityServer folder. (The tools folder can be deleted as it omly contains postgres &redis for windows)

### Run The Server

1. Start the Server using wine or start the docker image with wine preinstalled