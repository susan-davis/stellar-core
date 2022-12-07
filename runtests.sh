#!/bin/sh

check_return()
{
    if [ "$?" -ne "0" ]; then
	echo '  *** Some tests failed in' $TEST '! ***'
	exit 1
    fi
}

TEST="sectored grid"

dgdebug -q sectored-tests.dg sectored-grid.dg testrunner.dg stdlib.dg \
    | grep 'tests passed successfully'

check_return

TEST="time"

dgdebug -q time-tests.dg time.dg testrunner.dg stdlib.dg \
     | grep 'tests passed successfully'

check_return

TEST="schema"

dgdebug -q schema-tests.dg schema.dg sectored-grid.dg testrunner.dg \
	stdlib.dg \
     | grep 'tests passed successfully'

check_return

TEST="sensors"

dgdebug -q sensor-tests.dg sensors.dg schema.dg sectored-grid.dg \
	    testrunner.dg stdlib.dg \
	| grep 'tests passed successfully'

check_return

TEST="maneuver"

(dgdebug -q maneuver-tests.dg maneuvering.dg schema.dg sectored-grid.dg \
	    testrunner.dg stdlib.dg \
     | grep 'tests passed successfully')

check_return

echo '  *** All tests passed. ***' &&
exit 0

