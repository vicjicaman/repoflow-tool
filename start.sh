#!/bin/bash

export REPOFLOW_WORKSPACE=./workspace
echo "REPOFLOW_WORKSPACE=$REPOFLOW_WORKSPACE"

export REPOFLOW_GRAPH_HOME=./node_modules/@nebulario/nodeflow-local-graph
export REPOFLOW_SERVER_HOME=./node_modules/@nebulario/nodeflow-local-server
export REPOFLOW_GRAPH_SERVICE_HOST=localhost
export REPOFLOW_GRAPH_SERVICE_PORT=4078

export REPOFLOW_WEB_SERVICE_HOST=localhost
export REPOFLOW_WEB_SERVICE_PORT=5078
export REPOFLOW_GRAPH_URL=http://localhost:4078/graphql
export REPOFLOW_EVENTS_URL=http://localhost:4078/events

echo "Starting graph at port ${REPOFLOW_GRAPH_SERVICE_PORT}"
node ${REPOFLOW_GRAPH_HOME}/dist/index.js &
echo "Starting web at port ${REPOFLOW_WEB_SERVICE_PORT}"
node ${REPOFLOW_SERVER_HOME}/dist/index.js &

wait
