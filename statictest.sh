#!/bin/bash
ruby statictest.rb
cd ~
tar -xvf build_artifact.tar && rm build_artifact.tar
sed -e "s/COLOR_REPLACE_ME/${COLOR}/g" ./app/views/layouts/application.html.erb
echo "Success"
tar -cvf scm_artifact.tar 
