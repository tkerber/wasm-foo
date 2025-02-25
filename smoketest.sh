#!/usr/bin/env bash
set -e
pushd bun-esm > /dev/null
  bun run index.ts || echo 'bun (esm) failed'
popd > /dev/null
pushd bun-cjs > /dev/null
  bun run index.cts || echo 'bun (cjs) failed'
popd > /dev/null
pushd nodejs-esm > /dev/null
  node index.js || echo 'nodejs (esm) failed'
popd > /dev/null
pushd nodejs-cjs > /dev/null
  node index.cjs || echo 'nodejs (cjs) failed'
popd > /dev/null
pushd webpack > /dev/null
  CI=true playwright test || echo 'webpack failed'
popd > /dev/null