#!/usr/bin/env bash
set -e
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
