#!/bin/bash
# For Sketch Downloaded via the Internet

clear
say "Installing all Sketch Plugins onto your Mac"
say "Downloading the sketch plugins..."
cd ~/Documents/
curl -L https://github.com/paulfarino/Sketch-Shell/tarball/master -o master.tar.gz
say "Extracting the plugins..."
mkdir -p sketch-plugins/plugins
tar -zxf master.tar.gz -C sketch-plugins/plugins
cd sketch-plugins
cd plugins
cd *
rm -rf LICENSE
rm -rf README.md
rm -rf sketch-plugins.sh
rm -rf sketch-plugins-voice.sh
cd ..
mv */* ~/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins

say "Plugins installed; Cleaning up files..."
cd ~/Documents/
rm -f master.tar.gz
rm -rf sketch-plugins
say "All done! All Sketch Plugins installed."
