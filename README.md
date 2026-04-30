# stellar-core
Common functionality for *Stellar Union* games. This project contains all the infrastructure needed to implement a *Cygnus*-class (or other) starship in the Stellar Union universe, fly it around, dock and undock, land and take off, repair damage, scan for anomalies, go for EVAs outside the ship, beam to places with the Matter Transport Beam, and generally make an IF game that plays like an episode of a show along the lines of *Star Trek*, *Galaxy Quest*, *The Orville*, or the like.

## Modules
`grid.dg` -- implements the basics of ranges, bearings, and moving objects around on a square grid.

`sector.dg` -- divides the grid for `grid.dg` into 10x10 quadrants, sectors, and subsectors.

`maneuver.dg` -- implements moving ships around to various destinations in a quadrant.

`damage.dg` -- implements the damage model for ships.

`sensor.dg` -- implements short and long range sensors, and the quadrant map, along the lines of the classic STARTREK game from the 1970s.

`weapons.dg` -- effects of ship-to-ship weapons.

`systems.dg` -- non-weapon ship systems.

`cygnus.dg` -- the interior of a *Cygnus*-class scout ship, with controls hooked up to the other modules.

`union-ship.dg` -- traits and scenery and sound effects common to all Stellar Union ships and bases.

`time.dg` -- implements time, timekeeping, formatted output, and related functions.

`utils.dg` -- miscellaneous utility routines not included in `stdlib.dg`.

`d6.dg` -- `UNDO`-safe rolls of six-sided dice; also allows us to rig the dice to stage-manage scripted outcomes.

`d6-lite.dg` -- drop-in replacement for d6.dg for vintage hardware.

`no-maneuver.dg` -- minimal replacement for maneuver.dg when maneuvering isn't needed.

`no-damage.dg` -- minimal replacement for damage.dg when ships aren't going to be damaged.

`no-sensor.dg` -- minimal replacement for sensor.dg when no one will be looking at the sensor output.

`stdlib.dg` -- the Dialog standard library, not included in source control; get this from the Dialog distribution.

`unit.dg` -- runs unit tests.

`Makefile` -- run all the project's tests and compile the validation executable.

## Building and Testing
Testing is with `unit.dg`. Test files end in `-tests.dg`, and test the related file indicated by the beginning of the filename. The comments at the top give the command line needed to run the tests.

Run "make" to build story files and run the unit tests.
