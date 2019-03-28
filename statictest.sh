#!/bin/bash 

# Unit test that always passes.
ruby statictest.rb

# Replace the color placeholder with the environment variable.
sed -i "s/COLOR_REPLACE_ME/${COLOR}/g" ./app/views/layouts/application.html.erb
sed -i "s/Demo/$(date '+%m-%d-%Y')/g" ./app/views/layouts/application.html.erb

cd /home/predixci
mkdir change_artifact
cd change_artifact
touch clone.txt

