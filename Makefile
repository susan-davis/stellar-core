all: test 

COMPILE=dialogc
DEBUG=dgdebug -q -w 80 -h 1 --no-warn-not-topic
STDLIB=utils.dg unit.dg stdlib.dg

SRCS=su-101.dg union-ship.dg damage.dg arc.dg maneuvering.dg sensors.dg schema.dg sectored-grid.dg time.dg

su-101.z8: $(SRCS) test
	$(COMPILE) -t z8 $(SRCS) $(STDLIB)

su-101.zblorb: $(SRCS) test
	$(COMPILE) -t zblorb $(SRCS) $(STDLIB)

su-101.aastory: $(SRCS) test
	$(COMPILE) -t aastory $(SRCS) $(STDLIB)

test: utils time sectored-grid schema arc sensors maneuver damage

utils:
	$(DEBUG) utils-tests.dg $(STDLIB)

time:
	$(DEBUG) time-tests.dg time.dg $(STDLIB)

sectored-grid:
	$(DEBUG) sectored-tests.dg sectored-grid.dg $(STDLIB)

schema:
	$(DEBUG) schema-tests.dg schema.dg sectored-grid.dg $(STDLIB)

sensors:
	$(DEBUG) sensor-tests.dg sensors.dg schema.dg sectored-grid.dg $(STDLIB)

maneuver:
	$(DEBUG) maneuver-tests.dg maneuvering.dg schema.dg sectored-grid.dg $(STDLIB)

arc:
	$(DEBUG) arc-tests.dg arc.dg sectored-grid.dg $(STDLIB)

damage:
	$(DEBUG) damage-tests.dg damage.dg schema.dg sectored-grid.dg $(STDLIB)

clean:

.PHONY: test all clean utils time sectored-grid schema sensors maneuver arc damage
