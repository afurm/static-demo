#!/bin/bash 

export HOME=/root

cd ~
# Extract and then reomve the tarfile.
tar -xvf artifact.tar /usr/local/repos && rm artifact.tar


# Unit test that always passes.
ruby statictest.rb

# Replace the color placeholder with the environment variable.
sed -e "s/COLOR_REPLACE_ME/${COLOR}/g" ./app/views/layouts/application.html.erb 

# Create artifact to be deployed.
cd .. 
tar -cvf artifact.tar ./static-demo