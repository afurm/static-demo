#!/bin/bash 
export HOME=/root

cd ~
tar -xvf build_artifact.tar && rm build_artifact.tar

ruby statictest.rb
sed -e "s/COLOR_REPLACE_ME/${COLOR}/g" ./app/views/layouts/application.html.erb
echo "Success"

tar -cvf artifact.tar 