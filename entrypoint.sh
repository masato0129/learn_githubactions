#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
echo "11111"
git clone https://github.com/masato0129/learn_githubactions.git
echo "22222"
cd learn_githubactions
echo "33333"
platformio run
echo "44444"
