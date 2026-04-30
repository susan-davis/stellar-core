# stellar-core consists of shared components between Stellar Union games

COMPILE=dialogc
DEBUG=dgdebug -u
BUNDLE=aambundle
STDLIB=utils.dg unit.dg stdlib.dg
LIBS=test-ships.dg maneuver.dg sector.dg grid.dg $(STDLIB)
DLIBS=arc.dg schema.dg d6.dg $(LIBS)

DGSRCDIR=../dialog
DISTROLIBS=$(DGSRCDIR)/stdlib.dg $(DGSRCDIR)/stddebug.dg $(DGSRCDIR)/unit.dg

SRCS=su-101.dg union-ship.dg damage.dg arc.dg maneuvering.dg sensors.dg schema.dg sector.dg grid.dg d6.dg time.dg utils.dg

all: test

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

test: utils time d6 d6-lite grid sector schema maneuver arc damage weapons

clean:
	rm -f *~ \#*\# *.z8 *.zblorb *.aastory *.d64 *.d71 log.txt

libraries: $(DISTROLIBS)
	cp -f $(DISTROLIBS) .

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
	$(DEBUG) maneuver-tests.dg $(LIBS)

schema:
	$(DEBUG) schema-tests.dg schema.dg $(LIBS)

arc:
	$(DEBUG) arc-tests.dg $(DLIBS)

damage:
	$(DEBUG) damage-tests.dg damage.dg $(DLIBS)

weapons:
	$(DEBUG) weapons-tests.dg weapons.dg damage.dg $(DLIBS)

sensors-wide:
	$(DEBUG) -w 80 sensor-tests.dg sensors.dg $(LIBS)

sensors-narrow:
	$(DEBUG) -w 40 sensor-tests.dg sensors.dg $(LIBS)

.PHONY: test all clean utils 6502 time sector ggrid schema sensors maneuver
.PHONY: arc damage d6 d6-lite
