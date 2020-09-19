#!/bin/bash
set -eux
cd
export PATH $PATH:.platformio/penv/bin
git clone https://github.com/masato0129/learn_githubactions.git
cd learn_githubactions
platformio run