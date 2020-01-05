#!/bin/sh

git submodule update --init

pip install -r dependencies/requirements.txt
npm install

# deploy in surge
npm install -g surge

# build the project
grunt build

if [ "$PR_NUMBER" != "false" ]
then
    echo "PR_NUMBER value is ${PR_NUMBER}"
else
  echo "PR_NUMBER value is ${PR_NUMBER}."
  exit 3
fi

PROJECT_BUILD="build/"
DOMAIN="http://numpy-version-${PR_NUMBER}.surge.sh"
echo "PR_NUMBER: $PR_NUMBER"
echo "SURGE_LOGIN: $SURGE_LOGIN"
echo "SURGE_TOKEN: $SURGE_TOKEN"


surge --project $PROJECT_BUILD --domain $DOMAIN;

