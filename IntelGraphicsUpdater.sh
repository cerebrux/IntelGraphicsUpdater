#!/bin/bash

notify-send -i $(pwd)/icons/password.png "Type your user password."
sleep 2
gksudo sh ./script.sh
