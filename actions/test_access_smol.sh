#!/usr/bin/env bash

set -eu
set +o pipefail

echo check aws
aws --version

echo check helm
helm version
