#!/bin/sh

echo "Hello world " $@
timestamp=$(date +%F)
echo ${timestamp}
sed 's/hello/world/' ./cstate/templates/template-downtime.md > ./cstate/content/issues/${timestamp}-$1.md
cp ./cstate/templates/2021-07-08-template-downtime.md ./cstate/content/issues/


