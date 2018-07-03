#!/bin/bash
ruby statictest.rb
sed -e "s/$COLOR/silver/g" ./app/views/layouts/application.html.erb
echo "Success"