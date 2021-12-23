#!/bin/bash

export GITHUB_REPOSITORY="https://github.com/letsrockthefuture/makefiles.git"
export HEAD="main"

if [ ".makefiles" ] && [ -d ".makefiles" ]; then
  echo "Removing existing .makefiles..."
  rm -rf ".makefiles"
fi

echo "Cloning ${GITHUB_REPOSITORY}#${HEAD}..."
git clone -c advice.detachedHead=false --depth=1 -b ${HEAD} ${GITHUB_REPOSITORY} .makefiles
