docker-cleanup () {
    force=""
    if [[ $1 = "force" ]]
    then
        force="-f"
    fi
    docker rm ${force} $(docker ps -aq 2>/dev/null) 2> /dev/null
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2> /dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2> /dev/null
}
