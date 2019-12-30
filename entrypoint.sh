#!/usr/bin/env bash 

echo "running luigi image"

case $1 in
    server)
        luigid
        ;;
    task-hello-world)
        luigi --module examples.hello_world examples.HelloWorldTask
        ;;
esac
