#!/bin/bash

##############################
# File Name: tmux.sh
# Author: Yan Wei
# mail: w0106.yan@
# Created Time: 2018-11-23_10:15:11
##############################
cmd=`which tmux`
session=fun4tmux
 
if [ -z $cmd ]; then
  echo "You need to install tmux."
  exit 10
fi
 
$cmd has -t $session
 
if [ $? != 0 ]; then
    $cmd new -d -n bash -s $session "bash"
    #$cmd splitw -v -p 20 -t $session "pry"
    #$cmd neww -n mutt -t $session "mutt"
    #$cmd neww -n irssi -t $session "irssi"
    #$cmd neww -n cmus -t $session "cmus"
    $cmd neww -n bash -t $session "bash"
    #$cmd splitw -h -p 50 -t $session "bash"

    #$cmd selectw -t $session:1
    #$cmd new -d -n bash -s $session "bash"
    #$cmd splitw -v -p 20 -t $session "bash"
    #$cmd neww -n bash -t $session "bash"
    #$cmd splitw -h -p 50 -t $session "bash"
fi
 
$cmd att -t $session
