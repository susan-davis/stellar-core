# stellar-core consists of shared components between Stellar Union games

DEBUG=dgdebug -u
WIDE=$(DEBUG) -w 80
NARROW=$(DEBUG) -w 40

COMPILE=dialogc
AA=$(COMPILE) -t aa
BUNDLE=aambundle
Z5=$(COMPILE) -t z5
Z8=$(COMPILE) -t z8
BLORB=$(COMPILE) -t zblorb
ZBUNDLE=ozmoo

STDLIB=utils.dg unit.dg stdlib.dg
LIBS=test-ships.dg schema.dg sector.dg bearing.dg grid.dg $(STDLIB)
DLIBS=arc.dg damage.dg d6.dg time.dg $(LIBS)
SLIBS=scanner.dg systems.dg missile-lite.dg missile.dg weapons.dg scanner.dg sensor.dg $(DLIBS)
TLIBS=quadrant.dg orbit.dg planet.dg terrain.dg transient.dg probe.dg $(SLIBS)

LIBRARIES=state.dg crew.dg goals.dg $(SHIP)
SHIP=cygnus.dg matt.dg eva.dg union-ship.dg shuttle.dg mtd.dg controls.dg sensor-display.dg ship-damage.dg $(MODEL)
MODEL=quadrant.dg orbit.dg planet.dg terrain.dg probe.dg transient.dg scanner.dg weapons.dg sensor.dg arc.dg damage.dg maneuver.dg schema.dg sector.dg bearing.dg grid.dg d6.dg time.dg utils.dg stdlib.dg

all: test

test: test-basics test-systems

test-basics: utils time d6 d6-lite grid bearing sector schema maneuver 

test-systems: damage arc sensor weapons missile missile-lite # systems scanner probe shuttle mtd

test-controls: sensor-wide sensor-narrow scanner-panel weapons-panel helm ops engine-panel controls

clean:
	rm -f *~ \#*\# *.z5 *.z8 *.zblorb *.aastory *.d64 *.d71 log.txt

utils:
	$(DEBUG) utils-tests.dg $(STDLIB)

time:
	$(DEBUG) time-tests.dg time.dg $(STDLIB)

d6:
	$(DEBUG) d6-tests.dg d6.dg $(STDLIB)
#	$(DEBUG) d6-lite-tests.dg d6.dg $(STDLIB) # FIXME

d6-lite:
	$(DEBUG) d6-lite-tests.dg d6-lite.dg $(STDLIB)

grid:
	$(DEBUG) grid-tests.dg grid.dg $(STDLIB)

bearing:
	$(DEBUG) bearing-tests.dg bearing.dg grid.dg $(STDLIB)

facing:
	$(DEBUG) facing-tests.dg facing.dg grid.dg $(STDLIB)

sector:
	$(DEBUG) sector-tests.dg sector.dg bearing.dg grid.dg $(STDLIB)

schema:
	$(DEBUG) schema-tests.dg schema.dg test-ships.dg bearing.dg grid.dg $(STDLIB)

maneuver:
	$(DEBUG) maneuver-tests.dg maneuver.dg time.dg $(LIBS)

damage:
	$(DEBUG) damage-tests.dg damage.dg d6.dg $(LIBS)

arc:
	$(DEBUG) arc-tests.dg arc.dg $(LIBS)

sensor:
	$(DEBUG) sensor-tests.dg sensor.dg $(DLIBS)

sensor-wide:
	$(WIDE) sensor-display-tests.dg sensor-display.dg sensor.dg $(DLIBS)

sensor-narrow:
	$(NARROW) sensor-display-tests.dg sensor-display.dg sensor.dg $(DLIBS)

weapons:
	$(DEBUG) weapons-tests.dg weapons.dg sensor.dg maneuver.dg $(DLIBS)

missile:
	$(DEBUG) missile-tests.dg missile.dg weapons.dg sensor.dg maneuver.dg $(DLIBS)

missile-lite:
	$(DEBUG) missile-lite-tests.dg missile-lite.dg weapons.dg sensor.dg maneuver.dg $(DLIBS)

.PHONY: test all clean utils time sector grid maneuver damage d6 d6-lite
.PHONY: sensor sensor-wide sensor-narrow arc weapons missile
