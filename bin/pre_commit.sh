#!/bin/bash

export SHELL=/bin/bash

github_url="https://github.com/letsrockthefuture/terraform-repository-template.git"
chdir=".terraform-repository-template"

if [ $chdir ] && [ -d $chdir ]; then
    echo "Removing existing $chdir..."
    rm -rf $chdir
fi

echo "Cloning $github_url#main..."
git clone -c advice.detachedHead=false --depth=1 $github_url $chdir
