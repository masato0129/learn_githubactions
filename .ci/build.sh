#!/bin/bash
set -eux
export PATH=$PATH:/root/.platformio/penv/bin
git clone https://github.com/masato0129/learn_githubactions.git
cd learn_githubactions
platformio run