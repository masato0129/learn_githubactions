#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
git clone https://github.com/masato0129/learn_githubactions.git
cd learn_githubactions
platformio run
echo "############################"