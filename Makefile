all: test 

COMPILE=dialogc
DEBUG=dgdebug -u
BUNDLE=aambundle
STDLIB=utils.dg unit.dg stdlib.dg

SRCS=su-101.dg union-ship.dg damage.dg arc.dg maneuvering.dg sensors.dg schema.dg sectored-grid.dg time.dg

su-101.z8: $(SRCS) test
	$(COMPILE) -t z8 $(SRCS) $(STDLIB)

su-101.zblorb: $(SRCS) test
	$(COMPILE) -t zblorb $(SRCS) $(STDLIB)

su-101.aastory: $(SRCS) test
	$(COMPILE) -t aastory $(SRCS) $(STDLIB)

su-101.d64: su-101.aastory
	$(BUNDLE) -t 64 -o $@ $<

su-101.d71: su-101.aastory
	$(BUNDLE) -t 128 -o $@ $<

6502: su-101.d64

test: utils time 3d6 3d6-lite sectored-grid schema arc sensors-wide maneuver damage systems

utils:
	$(DEBUG) utils-tests.dg $(STDLIB)

time:
	$(DEBUG) time-tests.dg time.dg $(STDLIB)

3d6:
	$(DEBUG) 3d6-tests.dg 3d6.dg $(STDLIB)

3d6-lite:
	$(DEBUG) 3d6-lite-tests.dg 3d6-lite.dg $(STDLIB)

3d6-extra:
	$(DEBUG) 3d6-lite-tests.dg 3d6.dg $(STDLIB)

sectored-grid:
	$(DEBUG) sectored-tests.dg sectored-grid.dg $(STDLIB)

schema:
	$(DEBUG) schema-tests.dg schema.dg sectored-grid.dg $(STDLIB)

sensors-wide:
	$(DEBUG) -w 80 sensor-tests.dg sensors.dg schema.dg sectored-grid.dg $(STDLIB)

sensors-narrow:
	$(DEBUG) -w 40 sensor-tests.dg sensors.dg schema.dg sectored-grid.dg $(STDLIB)

maneuver:
	$(DEBUG) maneuver-tests.dg maneuvering.dg schema.dg sectored-grid.dg $(STDLIB)

arc:
	$(DEBUG) arc-tests.dg arc.dg schema.dg sectored-grid.dg $(STDLIB)

damage:
	$(DEBUG) damage-tests.dg damage.dg schema.dg sectored-grid.dg $(STDLIB)

systems:
	$(DEBUG) systems-tests.dg systems.dg damage.dg arc.dg schema.dg sectored-grid.dg 3d6.dg $(STDLIB)

clean:
	rm -f *~ \#*\# *.z8 *.zblorb *.aastory *.d64 *.d71 log.txt

.PHONY: test all clean utils 6502 time sectored-grid schema sensors maneuver
.PHONY: arc damage 3d6 3d6-lite 3d6-extra
