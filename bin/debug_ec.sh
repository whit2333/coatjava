#!/bin/sh -f

source `dirname $0`/env.sh 

#CLARA_HOME=`dirname $0`
#CLARA_SERVICES=`dirname $0`
#DATAMINING=`dirname $0`

echo +-------------------------------------------------------------------------
echo "| Starting CLARA-PLATFORM with CLARA_SERVICES = " $CLARA_SERVICES
echo +-------------------------------------------------------------------------
echo "\n"

echo "INSTALLATION DIRECTORY = " $CLARA_HOME
echo "LIBRARY DIRECTORY      = " $DATAMINING/lib/clas/

#java -cp "$DATAMINING/lib/clas/core/*" org.jlab.coda.eventViewer.EventTreeFrame $*
java -Xms1024m -cp "$DATAMINING/lib/clas/*:$DATAMINING/lib/plugins/*" org.jlab.display.ec.ECPion $*
