# stellar-core consists of shared components between Stellar Union games

COMPILE=dialogc
DEBUG=dgdebug -u
BUNDLE=aambundle
STDLIB=utils.dg unit.dg stdlib.dg
LIBS=test-ships.dg sector.dg grid.dg $(STDLIB)
SLIBS=no-damage.dg no-maneuver.dg $(LIBS)
DLIBS=arc.dg damage.dg d6.dg no-maneuver.dg $(LIBS)

all: test

test: utils time d6 d6-lite grid sector maneuver damage arc sensor-wide sensor-narrow weapons

clean:
	rm -f *~ \#*\# *.z8 *.zblorb *.aastory *.d64 *.d71 log.txt

utils:
	$(DEBUG) utils-tests.dg $(STDLIB)

time:
	$(DEBUG) time-tests.dg time.dg $(STDLIB)

d6:
	$(DEBUG) d6-tests.dg d6.dg $(STDLIB)

d6-lite:
	$(DEBUG) d6-lite-tests.dg d6-lite.dg $(STDLIB)

grid:
	$(DEBUG) grid-tests.dg grid.dg $(STDLIB)

sector:
	$(DEBUG) sector-tests.dg sector.dg grid.dg $(STDLIB)

maneuver:
	$(DEBUG) maneuver-tests.dg maneuver.dg $(LIBS)

damage:
	$(DEBUG) damage-tests.dg damage.dg no-maneuver.dg d6.dg $(LIBS)

arc:
	$(DEBUG) arc-tests.dg $(DLIBS)

sensor-wide:
	$(DEBUG) -w 80 sensor-tests.dg sensor.dg $(SLIBS)

sensor-narrow:
	$(DEBUG) -w 40 sensor-tests.dg sensor.dg $(SLIBS)

weapons:
	$(DEBUG) weapons-tests.dg weapons.dg $(DLIBS)

.PHONY: test all clean utils time sector grid maneuver damage d6 d6-lite
.PHONY: sensor-wide sensor-narrow arc
