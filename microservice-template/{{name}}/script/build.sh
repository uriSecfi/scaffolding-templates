#! /usr/bin/env bash
script_dir="$(cd "$(dirname "$0")" ; pwd -P )"
original_dir=$(pwd)

cd "${script_dir}"
cd ".."

# CLEAN
rm -rf build
rm -rf bundle.tar.gz

# BUILD
yarn install
yarn tsc

# DEPENDENCIES
mv node_modules _node_modules
yarn install --production

# ZIP
tar -zcf bundle.tar.gz package.json build node_modules

# RESTORE
rm -rf node_modules
mv _node_modules node_modules
rm -rf _node_modules

cd $original_dir
