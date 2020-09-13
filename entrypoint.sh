#!/bin/sh -l

echo "TEST $1"
git clone https://github.com/masato0129/learn_githubactions.git
#cd learn_githubactions
platformio run
time=$(date)
echo "::set-output name=time::$time"
