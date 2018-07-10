#!/bin/bash 

cd ~
tar -xvf artifact.tar && rm artifact.tar

ruby statictest.rb
sed -e "s/COLOR_REPLACE_ME/${COLOR}/g" ./app/views/layouts/application.html.erb
echo "Success"

tar -cvf artifact.tar /Users/brianna/Desktop/staticdemo