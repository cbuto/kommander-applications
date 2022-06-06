#!/usr/bin/env bash
APP_NAME=${1:?"missing arg 1: APP_NAME"}
TO_VERSION=${2:?"missing arg 2: TO_VERSION"}

export FULL_VERSION=${TO_VERSION}
FULL_PATH=$(find ./services/${APP_NAME}/*/${APP_NAME}.yaml)

yq eval '.spec.chart.spec.version = env(FULL_VERSION)' -i "${FULL_PATH}"
