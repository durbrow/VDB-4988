#!/bin/sh
WORKDIR=$(mktemp -d) || exit 1
docker run -v ${WORKDIR}:/output:rw -w /output -it --rm $(docker build -q --target ${TARGET:-aws} .)
du -sh ${WORKDIR}
rm -rf ${WORKDIR}
