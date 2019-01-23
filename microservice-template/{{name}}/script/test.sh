#!/usr/bin/env bash
script_dir="$(cd "$(dirname "$0")" ; pwd -P )"
original_dir=$(pwd)

cd "${script_dir}"
cd ".."
yarn install
yarn jest
EXIT_CODE=$?

cd $original_dir
exit $EXIT_CODE
