#!/bin/bash
# For Sketch Downloaded via the Internet

clear
osascript -e "set Volume 10"
say "Installing all Sketch Plugins onto your Mac"
say "Downloading the sketch plugins..."
cd ~/Documents/
curl -L https://github.com/paulfarino/Sketch-Shell/tarball/master -o master.tar.gz
say "Extracting the plugins..."
mkdir -p sketch-plugins/plugins
tar -zxf master.tar.gz -C sketch-plugins/plugins
cd sketch-plugins
cd plugins
find . -mindepth 2 -type f -print -exec mv {} . \;
rm -R -- */
rm *.md
rm LICENSE
cd ..
mv plugins/* ~/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins/


say "Plugins installed; Cleaning up files..."
cd ~/Documents/
rm -f master.tar.gz
rm -rf sketch-plugins
say "All done! All Sketch Plugins installed."