#!/bin/bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)" && brew tap cloudfoundry/tap && brew install cf-cli
