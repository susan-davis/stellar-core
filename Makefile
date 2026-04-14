# stellar-core consists of shared components between Stellar Union games

COMPILE=dialogc
DEBUG=dgdebug -u
BUNDLE=aambundle
STDLIB=utils.dg unit.dg stdlib.dg

DGSRCDIR=../dialog
LIBS=$(DGSRCDIR)/stdlib.dg $(DGSRCDIR)/stddebug.dg $(DGSRCDIR)/unit.dg

SRCS=su-101.dg union-ship.dg damage.dg arc.dg maneuvering.dg sensors.dg schema.dg sectored-grid.dg time.dg

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

test: utils time dice dice-lite sectored-grid schema arc sensors-wide maneuver damage weapons

clean:
	rm -f *~ \#*\# *.z8 *.zblorb *.aastory *.d64 *.d71 log.txt

libraries: $(LIBS)
	cp -f $(LIBS) .

utils:
	$(DEBUG) utils-tests.dg $(STDLIB)

time:
	$(DEBUG) time-tests.dg time.dg $(STDLIB)

dice:
	$(DEBUG) dice-tests.dg dice.dg $(STDLIB)

dice-lite:
	$(DEBUG) dice-lite-tests.dg dice-lite.dg unit.dg stdlib.dg

dice-extra:
	$(DEBUG) dice-lite-tests.dg dice.dg $(STDLIB)

sectored-grid:
	$(DEBUG) sectored-tests.dg sectored-grid.dg $(STDLIB)

schema:
	$(DEBUG) schema-tests.dg test-ships.dg schema.dg sectored-grid.dg $(STDLIB)

sensors-wide:
	$(DEBUG) -w 80 sensor-tests.dg sensors.dg schema.dg sectored-grid.dg $(STDLIB)

sensors-narrow:
	$(DEBUG) -w 40 sensor-tests.dg sensors.dg schema.dg sectored-grid.dg $(STDLIB)

maneuver:
	$(DEBUG) maneuver-tests.dg maneuvering.dg schema.dg sectored-grid.dg $(STDLIB)

arc:
	$(DEBUG) arc-tests.dg test-ships.dg arc.dg schema.dg sectored-grid.dg $(STDLIB)

damage:
	$(DEBUG) damage-tests.dg test-ships.dg damage.dg schema.dg sectored-grid.dg dice.dg $(STDLIB)

weapons:
	$(DEBUG) weapons-tests.dg test-ships.dg weapons.dg damage.dg arc.dg schema.dg sectored-grid.dg dice.dg $(STDLIB)

.PHONY: test all clean utils 6502 time sectored-grid schema sensors maneuver
.PHONY: arc damage dice dice-lite dice-extra
