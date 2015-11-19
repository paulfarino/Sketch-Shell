#!/bin/bash
# For Sketch Downloaded via the Internet

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
find . -mindepth 2 -type f -print -exec mv {} . \;
rm -R -- */
cd ..
mv plugins/* ~/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins/
-rm -rf *.md
-rm -rf LICENSE

echo "Plugins installed; Cleaning up files..."
cd ~/Documents/
rm -f master.tar.gz
rm -rf sketch-plugins
echo "All done! All Sketch Plugins installed."
