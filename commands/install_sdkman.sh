#!/bin/bash
set -e

curl -s "https://get.sdkman.io" | bash
source "/Users/andreas/.sdkman/bin/sdkman-init.sh"
sdk install java 11.0.11.hs-adpt
sdk install gradle
