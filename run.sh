#!/bin/sh

pid=$(jps | grep team-site-api-1.0-SNAPSHOT.jar | awk '{print $1}')

if [ "$pid" != "" ] ; then
  kill -9 $pid
fi

nohup java -jar target/team-site-api-1.0-SNAPSHOT.jar > /dev/null 2>&1 &