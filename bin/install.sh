#!/bin/bash

export MAKEFILES_ORGANIZATION=${1:-letsrockthefuture}
export MAKEFILES_PROJECT=${2:-makefiles}
export MAKEFILES_BRANCH=${3:-main}
export GITHUB_REPOSITORY="https://github.com/${MAKEFILES_ORGANIZATION}/${MAKEFILES_PROJECT}.git"

if [ "${MAKEFILES_PROJECT}" ] && [ -d "${MAKEFILES_PROJECT}" ]; then
  echo "Removing existing ${MAKEFILES_PROJECT}..."
  rm -rf "${MAKEFILES_PROJECT}"
fi

echo "Cloning ${GITHUB_REPOSITORY}#${MAKEFILES_BRANCH}..."
git clone -c advice.detachedHead=false --depth=1 -b $MAKEFILES_BRANCH $GITHUB_REPOSITORY
