#!/usr/bin/env bash
set -eux

pushd webpack > /dev/null
  playwrightNixPath=$(which playwright | xargs dirname | xargs dirname)
  playwrightLibPath="$playwrightNixPath/lib/node_modules/@playwright/test"
  npm install
  npm install --no-bin-links --save-dev $playwrightLibPath
popd > /dev/null

pushd bun-esm > /dev/null
  bun update > /dev/null
popd > /dev/null
pushd bun-cjs > /dev/null
  bun update > /dev/null
popd > /dev/null
pushd nodejs-esm > /dev/null
  npm i > /dev/null
popd > /dev/null
pushd nodejs-cjs > /dev/null
  npm i > /dev/null
popd > /dev/null
