docker build -t jeandet/teamcity-docker-in-docker .
docker run -d=true -e SERVER_URL=https://hephaistos.lpp.polytechnique.fr/teamcity --name=teamcity-docker-in-docker -it jeandet/teamcity-docker-in-docker &
sleep 300
docker stop teamcity-docker-in-docker
docker commit teamcity-docker-in-docker jeandet/teamcity-docker-in-docker
docker rm teamcity-docker-in-docker
