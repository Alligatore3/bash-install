## Zio delle app
apps=(
  git
  nodejs
  docker
  openssl
)

#!/bin/bash 
function brewInstall() {
    brew $1;
}

function loopAppsAndCall() {
  ## Looping delle apps
  for i in ${apps[@]}; do
    brewInstall $i
  done
}

if [ !brew ]
  then 
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    sleep 2
    loopAppsAndCall
  else
    loopAppsAndCall
fi