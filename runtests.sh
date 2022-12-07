#!/bin/sh

TEST="sectored grid"

dgdebug -q sectored-tests.dg sectored-grid.dg testrunner.dg stdlib.dg \
    | grep 'tests passed successfully'

if [ "$?" -ne "0" ]; then
   echo '  *** Some tests failed in' $TEST '! ***'
   exit 1
fi

TEST="time"

dgdebug -q time-tests.dg time.dg testrunner.dg stdlib.dg \
     | grep 'tests passed successfully'

if [ "$?" -ne "0" ]; then
   echo '  *** Some tests failed in' $TEST '! ***'
   exit 1
fi

TEST="schema"

dgdebug -q schema-tests.dg schema.dg sectored-grid.dg testrunner.dg \
	stdlib.dg \
     | grep 'tests passed successfully'

if [ "$?" -ne "0" ]; then
   echo '  *** Some tests failed in' $TEST '! ***'
   exit 1
fi

TEST="sensors"

dgdebug -q sensor-tests.dg sensors.dg schema.dg sectored-grid.dg \
	    testrunner.dg stdlib.dg \
	| grep 'tests passed successfully'

if [ "$?" -ne "0" ]; then
   echo '  *** Some tests failed in' $TEST '! ***'
   exit 1
fi

TEST="maneuver"

(dgdebug -q maneuver-tests.dg maneuvering.dg schema.dg sectored-grid.dg \
	    testrunner.dg stdlib.dg \
     | grep 'tests passed successfully')

if [ "$?" -ne "0" ]; then
   echo '  *** Some tests failed in' $TEST '! ***'
   exit 1
fi

echo '  *** All tests passed. ***' &&
exit 0

