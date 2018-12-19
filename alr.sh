#!/bin/bash

alire_folder=$HOME/.config/alire/alr
userid=$(id -u)
groupid=$(id -g)


if  [ ! -d "$alire_folder" ]
then    
    echo "$alire_folder not found, creating it"
    mkdir -p $alire_folder
    cp -afT /usr/share/alire/ $alire_folder  
    chown -R $userid:$groupid $alire_folder
fi

$alire_folder/bin/alr
    
