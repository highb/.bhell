#!/bin/bash

source workday-shared.sh

pushd ~/Documents/GitHub/highb/notes
./pull.sh
popd

pushd ~/Documents/GitHub/highb/opengov-notes
./pull.sh
popd

for app in "${apps[@]}"; do
    open "/Applications/$app.app"
done

echo "Is it kubing time? (yN)"
read TIME_TO_KUBE

if [[ "${TIME_TO_KUBE}" == "y" ]]; then
    minikube start
fi

echo "You gonna pod some mans? (yN)"
read MAN_SOME_PODS

if [[ "${MAN_SOME_PODS}" == "y" ]]; then
    podman machine start
fi
