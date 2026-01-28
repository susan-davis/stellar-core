all: test 

COMPILE=dialogc
DEBUG=dgdebug -q
STDLIB=unit.dg stdlib.dg | tee log.txt | grep "tests passed successfully"

su-101.z8: test
	$(COMPILE) -t z8 \
		su-101.dg union-ship.dg damage.dg arc.dg maneuvering.dg \
		sensors.dg schema.dg sectored-grid.dg time.dg utils.dg \
		$(STDLIB)

su-101.zblorb: test
	$(COMPILE) -t zblorb \
		su-101.dg union-ship.dg damage.dg arc.dg maneuvering.dg \
		sensors.dg schema.dg sectored-grid.dg time.dg utils.dg \
		$(STDLIB)

su-101.aastory: test
	$(COMPILE) -t aastory \
		su-101.dg union-ship.dg damage.dg arc.dg maneuvering.dg \
		sensors.dg schema.dg sectored-grid.dg time.dg utils.dg \
		$(STDLIB)

test: utils time sectored-grid schema arc sensors maneuver damage

utils:
	$(DEBUG) utils-tests.dg utils.dg $(STDLIB)

time:
	$(DEBUG) time-tests.dg time.dg $(STDLIB)

sectored-grid:
	$(DEBUG) sectored-tests.dg sectored-grid.dg $(STDLIB)

schema:
	$(DEBUG) schema-tests.dg schema.dg sectored-grid.dg utils.dg $(STDLIB)

sensors:
	$(DEBUG) sensor-tests.dg sensors.dg schema.dg sectored-grid.dg \
	utils.dg $(STDLIB)

maneuver:
	$(DEBUG) maneuver-tests.dg maneuvering.dg schema.dg sectored-grid.dg \
	utils.dg $(STDLIB)

arc:
	$(DEBUG) arc-tests.dg arc.dg sectored-grid.dg $(STDLIB)

damage:
	$(DEBUG) damage-tests.dg damage.dg schema.dg sectored-grid.dg \
	utils.dg $(STDLIB)

.PHONY: test all utils time sectored-grid schema sensors maneuver arc damage
