#!/bin/bash
for ((i=0; ;++i)); do 
    read -p "type the name of the file to download or exit to quit: " url

    if [[  $url == "exit" ]]; then
        echo "Goodbye!"
        exit 0  
    else
        read -p "type the location where you want to download to: " directory
            if [[  $directory == "/"* ]]; then
                wget $url -P $directory
             else 
                echo "Bad directory input. Exiting"
                 exit 1
            fi   
    fi
done

