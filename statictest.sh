#!/bin/bash
ruby statictest.rb
sed -e "s/COLOR_REPLACE_ME/${COLOR:-silver}/g" ./app/views/layouts/application.html.erb
echo "Success"