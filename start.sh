#!/bin/bash

export REPOFLOW_WORKSPACE=~/repoflow/workspace
export PLUGIN_REPOFLOW_WORKSPACE=${REPOFLOW_WORKSPACE}
export REPOFLOW_GRAPHQL_SERVICE_HOST=localhost
export REPOFLOW_GRAPHQL_SERVICE_PORT=4081
export REPOFLOW_WEB_SERVICE_HOST=localhost
export REPOFLOW_WEB_SERVICE_PORT=5081
export REPOFLOW_PLUGIN_SERVICE_HOST=localhost
export REPOFLOW_PLUGIN_SERVICE_PORT=7081

export REPOFLOW_PLUGIN_SERVER=http://${REPOFLOW_PLUGIN_SERVICE_HOST}:${REPOFLOW_PLUGIN_SERVICE_PORT}
export REPOFLOW_GRAPHQL_SERVER=http://${REPOFLOW_GRAPHQL_SERVICE_HOST}:${REPOFLOW_GRAPHQL_SERVICE_PORT}
export REPOFLOW_GRAPHQL_URL=${REPOFLOW_GRAPHQL_SERVER}/graphql
export REPOFLOW_EVENTS_URL=${REPOFLOW_GRAPHQL_SERVER}/events
export REPOFLOW_PLUGINS_URL=${REPOFLOW_PLUGIN_SERVER}/

export REPOFLOW_GRAPHQL_VERSION=1.70.1-repoflow-tool-script-prod #module @nebulario/nodeflow-local-graph
export REPOFLOW_WEB_VERSION=1.70.1-repoflow-tool-script-prod #module @nebulario/nodeflow-local-server
export REPOFLOW_PLUGIN_VERSION=1.70.1-repoflow-tool-script-prod #module @nebulario/repoflow-plugin-server

echo "Starting..."
echo "{\"dependencies\":{\"@nebulario/nodeflow-local-server\":\"${REPOFLOW_WEB_VERSION}\",\"@nebulario/nodeflow-local-graph\":\"${REPOFLOW_GRAPHQL_VERSION}\",\"@nebulario/repoflow-plugin-server\":\"${REPOFLOW_PLUGIN_VERSION}\"}}" > package.json


export NODE_ENV="production"
yarn install --production=true

echo "Starting graph at port ${REPOFLOW_GRAPHQL_SERVICE_PORT}"
node ./node_modules/@nebulario/nodeflow-local-graph/dist/index.js &
echo "Starting web at port ${REPOFLOW_WEB_SERVICE_PORT}"
node ./node_modules/@nebulario/nodeflow-local-server/dist/index.js &
echo "Starting plugins at port ${REPOFLOW_PLUGIN_SERVICE_PORT}"
node ./node_modules/@nebulario/repoflow-plugin-server/dist/index.js &

wait
