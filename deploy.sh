#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git config --global user.email "aa34913@126.com"
git config --global user.name "ChenYCL"
git add -A
git commit -m 'deploy [ci skip]'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:ChenYCL/3d_cube.git master:gh-pages

rm -rf dist
cd -
