#!/bin/bash

echo -e "cdf() {
  finderPath=\$(osascript -e 'tell application \"Finder\"
                               try
                                   set currentFolder to (folder of the front window as alias)
                               on error
                                   set currentFolder to (path to desktop folder as alias)
                               end try
                               POSIX path of currentFolder
                            end tell')
  cd \"\$finderPath\"
}" >> $HOME/.zshrc && source $HOME/.zshrc

