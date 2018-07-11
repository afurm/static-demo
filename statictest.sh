#!/bin/bash 

# Extract and then reomve the tarfile.
mkdir static-demo
tar -xvf artifact.tar ./static-demo && rm artifact.tar
cd static-demo

# Unit test that always passes.
ruby statictest.rb

# Replace the color placeholder with the environment variable.
sed -e "s/COLOR_REPLACE_ME/${COLOR}/g" ./app/views/layouts/application.html.erb 

# Create artifact to be deployed.
cd .. 
tar -cvf artifact.tar static-demo