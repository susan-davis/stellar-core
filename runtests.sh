#!/bin/sh

dgdebug -q sectored-tests.dg sectored-grid.dg testrunner.dg stdlib.dg \
    | grep 'tests passed successfully' && \
dgdebug -q time-tests.dg time.dg testrunner.dg stdlib.dg \
    | grep 'tests passed successfully' && \
dgdebug -q schema-tests.dg schema.dg sectored-grid.dg testrunner.dg stdlib.dg \
    | grep 'tests passed successfully' && \
dgdebug -q sensor-tests.dg sensors.dg schema.dg sectored-grid.dg \
	    testrunner.dg stdlib.dg \
    | grep 'tests passed successfully' && \
dgdebug -q maneuver-tests.dg maneuvering.dg schema.dg sectored-grid.dg \
	    testrunner.dg stdlib.dg \
    | grep 'tests passed successfully'

    

