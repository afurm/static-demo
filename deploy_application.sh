#!/bin/bash

export HOME=/root

echo "Running unit test"

echo "----"
echo "Installing CF CLI"
echo "----"

chmod +x ./install_cf_cli.sh
./install_cf_cli.sh

echo "----"
echo "Configure CF ENV"
echo "----"

chmod +x ./configure_cf_cli.rb
./configure_cf_cli.rb

echo "----"
echo "Deploying to CF"
echo "----"

set +x

cf target
cf push --random-route