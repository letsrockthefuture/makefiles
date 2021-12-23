#!/bin/bash

github_url="https://github.com/letsrockthefuture/makefiles.git"

if [ ".makefiles" ] && [ -d ".makefiles" ]; then
  echo "Removing existing .makefiles..."
  rm -rf ".makefiles"
fi

echo "Cloning ${github_url}#main..."
git clone -c advice.detachedHead=false --depth=1 ${github_url} .makefiles
