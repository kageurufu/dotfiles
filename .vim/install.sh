#!/bin/bash

#install script for my vim settings and stuff
vim +BundleInstall +qall

(
  cd bundle/YouCompleteMe
  ./install.sh
)
