# stellar-core
Common functionality for *Stellar Union* games. This project contains all the infrastructure needed to implement a *Cygnus*-class (or other) starship in the Stellar Union universe, fly it around, dock and undock, land and take off, repair damage, scan for anomalies, go for EVAs outside the ship, beam to places with the Matter Transport Beam, and generally make an IF game that plays like an episode of a show along the lines of *Star Trek*, *Galaxy Quest*, *The Orville*, or the like.

## Modules
`sectored-grid.dg` -- implements the basics of ranges, bearings, and moving objects around on a square grid divided into sectors

`schema.dg` -- implements the basic record keeping for starships

`maneuvering.dg` -- implements moving ships around to various destinations in a quadrant

`sensors.dg` -- implements short and long range sensors, and the quadrant map, along the lines of the classic STARTREK game from the 1970s

`arc.dg` -- implements firing and shield arcs

`damage.dg` -- implements the damage model for ships

`cygnus.dg` -- the interior of a *Cygnus*-class scout ship, with controls hooked up to the other modules

`union-ship.dg` -- traits and scenery and sound effects common to all Stellar Union ships and bases

`time.dg` -- implements time, timekeeping, formatted output, and related functions

`utils.dg` -- miscellaneous utility routines not included in `stdlib.dg`

`stdlib.dg` -- the Dialog standard library, not included in source control; get this from the Dialog distribution

`testrunner.dg` -- runs unit tests

`runtests.sh` -- shell script to run all the project's unit tests

## Building and Testing
Testing is with `testrunner.dg`. Test files end in `-tests.dg`, and test the related file indicated by the beginning of the filename. The comments at the top give the command line needed to run the tests.

Build instructions to follow when development is far enough to have integration tests that can be built into Z-machine and `.aastory` files.
