#!/bin/bash
  
 #get a list of zombies procces id
zombies_pid=$(ps aux | grep 'Z' | awk '{ print $2 }')

  #kill each zombie process
 for pid in $zombies_pid;
 do
     echo "killing Zombies Process : $pid"
     kill -9 $pid
 done
echo "all zombies process has been killed"
