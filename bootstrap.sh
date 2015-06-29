#!/bin/sh
DIRNAME=`dirname $0`

source $DIRNAME/.vars
source ~/.homesick/repos/homeshick/homeshick.sh
homeshick link $REPO_NAME
#git clone https://github.com/vonpupp/bootstrap.castle $DIRNAME/setup
#$DIRNAME/setup/do-bootstrap.sh

$DIRNAME/10-install.sh
$DIRNAME/30-config-ycm.sh
$DIRNAME/20-config.sh
