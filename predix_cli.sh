#!/bin/bash
curl -L "https://packages.cloudfoundry.org/stable?release=macosx64-binary&source=github" | tar -zx && mv cf /usr/local/bin && cf --version