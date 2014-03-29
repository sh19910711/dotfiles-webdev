#!/bin/bash

for source_file in `ls ~/dotfiles-webdev/scripts/install-*.bash`; do
  source $source_file
done

