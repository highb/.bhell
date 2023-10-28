#!/bin/bash

source workday-shared.sh

for app in "${apps[@]}"; do
    echo "Killing ${app}"
    osascript -e "quit app \"$app\""
done
sleep 2

pkill "Slack"
pushd ~/Documents/GitHub/highb/notes
./push.sh
popd

pushd ~/Documents/GitHub/highb/opengov-notes
./push.sh
popd

minikube stop
#podman machine stop
