#!/bin/bash

npm i
git clone "$1" .app
cd .app
pnpm i
pnpm build
cd ..
rm -rf src/build
mv .app/build src
rm -rf dist
pnpm build
rm -rf .app
