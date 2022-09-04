#!/usr/bin/env sh

# abort on errors
set -e

rm -rf dist

# build
npm run build

# navigate into the build output directory
cd dist

git init
git checkout -b main
git add -A
git commit -m 'deploy to github pages'

git push -f git@github.com:Devahoy/headlessui-tabs-example.git main:gh-pages