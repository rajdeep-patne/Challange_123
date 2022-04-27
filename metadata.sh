#!/bin/sh
# Program for retreving metadata

for i in (`TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"` \
&& curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/meta-data/`)
do
echo -e '\t''"'$i'"':' "'$(curl -s http://169.254.169.254/latest/meta-data/$i)'"
done