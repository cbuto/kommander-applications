#!/usr/bin/env bash
APP_NAME=$1
CURRENT_APP_VERSION=$2

yq eval '.spec.chart.spec.version = "${kommanderChartVersion:=v2.3.1-dev}"' "services/${APP_NAME}/${CURRENT_APP_VERSION}/${APP_NAME}.yaml"
