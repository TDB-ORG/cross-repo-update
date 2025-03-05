# This script is intended to be called by circleci for project https://github.com/ovotech/orion-global-topic-conveyor

set -e
cd "$(dirname $0)/.."

git config user.email "mangeshsuryawanshi.tdg@gmail.com"
git config user.name "BOT"
git add -u .
if [ -z "$(git status --porcelain)" ]; then
  echo "No changes detected."
else
  git commit -m "Updating image tag for ${PROJECT_NAME} on ${DEPLOYMENT_ENV} to ${COMMIT_HASH}"
  git push origin main
fi