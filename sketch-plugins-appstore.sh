#!/bin/bash
# For Sketch Downloaded via the App Store

clear
echo "Installing all Sketch Plugins onto your Mac"
echo "Downloading the sketch plugins..."
cd ~/Documents/
curl -L https://github.com/paulfarino/Sketch-Shell/tarball/master -o master.tar.gz
echo "Extracting the plugins..."
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
mv */* ~/Library/Containers/com.bohemiancoding.sketch/Data/Library/Application Support/sketch/Plugins

echo "Plugins installed; Cleaning up files..."
cd ~/Documents/
rm -f master.tar.gz
rm -rf sketch-plugins
echo "All done! All Sketch Plugins installed."
