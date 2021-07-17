#!/bin/bash

# Shows versions of installed packages

echo
echo --------------
echo yarn
echo --------------
yarn --version

echo
echo --------------
echo npm
echo --------------
npm --version

echo
echo --------------
echo Webpack
echo --------------
webpack --version

echo
echo --------------
echo mocha
echo --------------
mocha --version

echo
echo --------------
echo nodemon
echo --------------
nodemon --version

echo
echo --------------
echo sass
echo --------------
sass --version

echo
echo --------------
echo typedoc
echo --------------
typedoc --version

echo
echo --------------
echo @angular/cli
echo --------------
ng --version

echo
echo --------------
echo typescript
echo --------------
tsc --version

echo
echo --------------
echo http-server
echo --------------
http-server --version
