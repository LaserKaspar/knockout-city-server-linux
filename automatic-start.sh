#/bin/sh

# TODO: Check if this is run from the correct directory
if [ ! -d "KnockoutCityServer" ]; then
    echo "This script was not run from the correct directory, as no KnockoutCityServer folder could be found. Create the folder and run the script again."
    exit 0
fi

# Check if KnockoutCityServer is installed

if [ ! -f "KnockoutCityServer/KnockoutCityServer.exe" ] || [ ! -f "KnockoutCityServer/data.zip" ]; then
    echo "KnockoutCityServer is not correctly downloaded. Purging & Starting download again."
    # TODO: Purge Folder
    # Download KOC
    curl https://chonky-delivery-network.akamaized.net/KnockoutCity-Server-10.0-269701.zip --progress-bar > KnockoutCityServer/koc-server.zip
    unzip KnockoutCityServer/koc-server.zip -d KnockoutCityServer
    mv KnockoutCityServer/KnockoutCityServer/* KnockoutCityServer
    rm -r KnockoutCityServer/KnockoutCityServer
    rm -r KnockoutCityServer/koc-server.zip
fi

if [ -d "KnockoutCityServer/tools" ]; then
    echo "KOC-tools are not needed. Delete them? [Y/n]"
    read keep
    if [[ $keep != "n" ]]; then
        echo "Deleting tools..."
        rm -r KnockoutCityServer/tools
    else
        echo "Keeping tools."
    fi
fi

echo "KOC correctly setup. Next Step: Setup Docker Containers"

cd wine-docker
docker build -t wine .
cd ../wine-docker

docker-compose -f master-docker-compose.yml up