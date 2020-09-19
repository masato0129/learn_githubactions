#!/bin/bash
set -eux
wippio lib --global install "arduino-libraries/Servo"
export PATH=$PATH:/root/.platformio/penv/bin
platformio run