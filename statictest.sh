#!/bin/bash 

ls
export HOME=/root

cd static-demo

# Unit test that always passes.
ruby statictest.rb

# Replace the color placeholder with the environment variable.
sed -i -e "s/COLOR_REPLACE_ME/${COLOR}/g" ./app/views/layouts/application.html.erb 
rm ./app/views/layouts/application.html.erb-e

# Tarball 
cd .. && tar -cvf change_artifact.tar ./static-demo

