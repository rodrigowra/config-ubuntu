#!/bin/bash
if [[ ! $INSTALL_SCRIPT ]]; then
    echo "(!) Error: You must use the installer script."
    exit
fi


echo "(+) Installing sdkman"

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

# If error messages pop up after running the command
# sudo dpkg -i google-chrome*.deb then run the command
# sudo apt-get install -f

echo "(+) Complete!  From Terminal, $ ffmpeg"
echo "    Add to a .bashrc file of your choice:"
echo " "
echo "    source \"\$HOME/.sdkman/bin/sdkman-init.sh"
echo " "
echo "    $ Usage: sdk install gradle"

if [ $SKIP_SLEEP == false ]; then
    sleep 4
fi
