#!/bin/bash
set -e

commands/install_homebrew.sh
commands/install_gcloud_components.sh
commands/install_omz.sh
commands/link_dotvim.sh
commands/install_sdkman.sh
echo "Symlinking dotfiles"
#./symlink_dotfiles.sh


