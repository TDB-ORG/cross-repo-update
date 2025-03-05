# This script is intended to be called by circleci for project https://github.com/ovotech/orion-global-topic-conveyor

set -e

cd "$(dirname $0)/../$PROJECT_NAME"

yq e ".*.application.image.tag=\"$COMMIT_HASH\"" -i "values-$DEPLOYMENT_ENV.yaml"