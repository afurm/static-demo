#!/bin/bash
tar -xvf artifact.tar
cd static-demo
ruby statictest.rb
sed -e "s/COLOR_REPLACE_ME/${COLOR}/g" ./app/views/layouts/application.html.erb
echo "Success"
cd ..
tar -cvf artifact.tar 
