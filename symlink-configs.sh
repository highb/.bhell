#!/bin/bash

source ~/.bhell/env.sh

CONFIG_DIRS=$(find ${CONFIGS_DIR} -type d ! -path ${CONFIGS_DIR})
CONFIG_FILES=$(find ${CONFIGS_DIR} -type f)

for DIR in $CONFIG_DIRS; do
    REALPATH=$(realpath --relative-to="${CONFIGS_DIR}" "${DIR}")
    DEST_DIR="${HOME}/${REALPATH}"

    if [ ! -d "${DEST_DIR}" ]; then
        mkdir -p "${DEST_DIR}"
    else
        echo "${DEST_DIR} already exists."
    fi
done

for FILE in $CONFIG_FILES; do
    REALPATH=$(realpath --relative-to="${CONFIGS_DIR}" "${FILE}")
    DEST_FILE="${HOME}/${REALPATH}"
    if [ ! -d "${DEST_DIR}" ]; then
        ln -s "${FILE}" "${DEST_FILE}"
    else
        echo "${DEST_FILE} already exists."
    fi
done
