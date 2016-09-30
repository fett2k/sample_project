#!/bin/bash
. config
. ../../env/$KETTLE_ENV/env_config
. functions

init

cd $KETTLE_DIR

./spoon.sh "${1+$@}"

