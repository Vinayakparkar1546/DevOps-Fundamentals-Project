#!/bin/bash

SERVICE=apache2

if systemctl is-active --quiet $SERVICE
then
    echo "Apache is running."
else
    echo "Apache stopped."
    sudo systemctl restart $SERVICE

    if systemctl is-active --quiet $SERVICE
    then
        echo "Apache restarted successfully."
    else
        echo "Restart failed."
    fi
fi
