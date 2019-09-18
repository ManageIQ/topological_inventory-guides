#!/bin/bash --login
echo "Catalog API"
source config.sh
source init-common.sh

cd $CATALOG_API_DIR
env DEV_USERNAME="slemrmartin" DEV_PASSWORD="dev" BYPASS_RBAC=1 APPROVAL_URL="${APPROVAL_API_URL}" TOPOLOGICAL_INVENTORY_URL="${TOPOLOGICAL_INVENTORY_API_SERVICE_HOST}:${TOPOLOGICAL_INVENTORY_API_SERVICE_PORT}" PATH_PREFIX="api" APP_NAME="catalog" PORT=${CATALOG_API_SERVICE_PORT} rails s --binding 0.0.0.0