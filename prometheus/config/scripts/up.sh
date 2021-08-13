#!/bin/sh

echo "Hello world " $@
timestamp=`date +"%Y-%m-%d"`
echo ${timestamp}
sed 's/hello/world/' /data/templates/2021-07-08-template-downtime.md > /data/content/issues/${timestamp}-$1.md
cp /data/templates/2021-07-08-template-downtime.md /data/content/issues/


