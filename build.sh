#!/bin/bash

pnpm i
git clone "$1" .app
cd .app
pnpm i
pnpm build
cd ..
rm -rf src/build
mv .app/build src
pnpm build
