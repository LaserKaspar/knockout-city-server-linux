#!/usr/bin/env bash

sleep 1s
cd KnockoutCityServer
wine --version
wine KnockoutCityServer.exe -backend_db="postgres://postgres:postgres@192.168.68.3:5431" -backend_redis_db_host="192.168.68.3" -backend-redis_db_port="6380"