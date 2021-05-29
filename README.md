# stellar-core
Common functionality for *Stellar Union* games. This project contains all the infrastructure needed to implement a *Cygnus*-class (or other) starship in the Stellar Union universe, fly it around, dock and undock, land and take off, repair damage, scan for anomalies, go for EVAs outside the ship, beam to places with the Matter Transport Beam, and generally make an IF game that plays like an episode of a show along the lines of *Star Trek*, *Galaxy Quest*, *The Orville*, or the like.
## Modules
`sectored-grid.dg` -- implements the basics of ranges, bearings, and moving objects around on a square grid divided into sectors

`schema.dg` -- implements the basic record keeping for starships

`maneuvering.dg` -- implements moving ships around to various destinations in a quadrant

`time.dg` -- implements time, timekeeping, formatted output, and related functions

`yagni.dg` -- miscellaneous code that turned out not to be needed, squirreled away in case it's needed later

`cygnus.dg` -- the interior of a *Cygnus*-class scout ship, with controls hooked up to the other modules

`stdlib.dg` -- the Dialog standard library, not included in source control; get this from the Dialog distribution
## Building and Testing
Testing is with `testrunner.dg`. Test files end in `-tests.dg`, and test the related file indicated by the beginning of the filename. The comments at the top give the command line needed to run the tests.

A `runtests.sh` script is in development, and will eventually be useful for running all tests, and for plugging in to a CI/CD pipeline.

Build instructions to follow when development is far enough to have integration tests that can be built into Z-machine and `.aastory` files.

