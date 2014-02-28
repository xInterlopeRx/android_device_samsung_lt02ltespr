#!/bin/sh

set -e

export DEVICE=lt02ltespr
export VENDOR=samsung
./../lt02ltexx-common/extract-files.sh $@
