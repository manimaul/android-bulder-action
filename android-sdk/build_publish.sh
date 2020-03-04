#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

pkg=docker.pkg.github.com/manimaul/android-builder-action/android-sdk
tag=latest
docker build -t ${pkg}:${tag} ${DIR}
docker push ${pkg}:${tag}