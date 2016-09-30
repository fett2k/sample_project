#!/bin/bash
. config
. ../../env/$KETTLE_ENV/env_config
. functions

init

cd $KETTLE_DIR

# allow local run
if [ "$1" == "--local" ]; then
  shift
  FILENAME="$1"
  shift
  ./kitchen.sh "-file=$FILENAME" "-level=$KETTLE_LOG_LEVEL" "$@"
else
  FILENAME="$1"
  shift
  ./kitchen.sh -rep=$KETTLE_REPO -level=$KETTLE_LOG_LEVEL -dir=`dirname "$FILENAME"` -job=`basename "$FILENAME" '.kjb'` "$@"
fi
