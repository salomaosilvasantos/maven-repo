#!/bin/bash
if [ $# -ne 4 ]; then
  echo "Wrong number of arguments. Correct usage: \"generate-maven-repo FILE GROUP ARTIFACT VERSION\""
  echo "Example: generate-maven-repo.sh ~/tmp/qef-libs/qosdisc.jar ch.epfl qosdisc 1.0"
else
  ORIGINAL_DIR=$PWD
  APP_DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
  cd $APP_DIR
  FILE=$1
  GROUP=$2
  ARTIFACT=$3
  VERSION=$4
  mvn install:install-file -Dfile=$FILE -DgroupId=$GROUP -DartifactId=$ARTIFACT -Dversion=$VERSION -Dpackaging=jar -DgeneratePom=true -DcreateChecksum=true -DlocalRepositoryPath=$APP_DIR
  cd $ORIGINAL_DIR
fi
