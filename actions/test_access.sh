#!/bin/sh

set -euo pipefail

echo check cargo
cargo version

echo check aws
aws --version

echo check helm
helm version
