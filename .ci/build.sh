#!/bin/bash
set -eux
git clone https://github.com/masato0129/learn_githubactions.git
cd learn_githubactions

ENV PATH $PATH:~/.platformio/penv/bin
platformio run