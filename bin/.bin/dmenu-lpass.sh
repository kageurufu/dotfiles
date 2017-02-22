#!/bin/bash

selection=`lpass ls --format "%an (%au) | %ai" | dmenu $@`
if [ "$selection" != "" ]; then
  lpass show -c --password $(echo $selection | cut -d '|' -f 2) &
fi
