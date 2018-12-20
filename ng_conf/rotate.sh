#!/bin/bash
LOGS_PATH=
YESTERDAY=$(date -d "yesterday" +%Y%m%d)
ls -l ${LOGS_PATH}/*.log |grep -v 20|awk '{print $9}' >/tmp/rotate_tmp.txt
cat /tmp/rotate_tmp.txt | while read LINE
do
        SIZE=$(ls -l ${LINE} | awk '{print $5}')
        test ${SIZE} -gt 0 && mv ${LINE} ${LINE}_${YESTERDAY}
done
rm -rf /tmp/rotate_tmp.txt
docker exec dnmp_web_1 nginx -s reload
