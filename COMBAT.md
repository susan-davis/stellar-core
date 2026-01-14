# Combat in *Stellar Union*
## Sectors, Quadrants, and Distance
Space is divided into 8 x 8 *quadrants*, which are divided into 10 x 10 *sectors*. Sectors can further be divided into 10 x 10 *subsectors*; this happens normally under the hood, and is displayed when the PC ship enters a sector containing some other object of interest such as a gravity well or an enemy ship. There's an outside chance that we might enlarge quadrants to 10 x 10 at some point before the release of the first game, but that makes quadrant maps on a 40 x 24 Commodore 64 screen awkward.

Distances are measured in *millisectors*. A sector is 1000 millisectors across, a subsector 100, and a position within a subsector 10. These are necessary because we only have unsigned integers available for math. 

Eventually, there might be shuttlecraft movement involving subdivisions of positions into a 5 x 5 grid of 2-millisector squares, so that a horizontal move is 2 millisectors and a diagonal one 3. That's at a different scale than ship combat, though.

We use "quadrant" and "sector" in a different way than classic `STARTREK`, which called a sector a "quadrant" and a subsector a "sector."

Speed is measured by "warp gradient" (warp factor). `STARTREK` and *Star Fleet 1* both use linear measures where each warp factor equals one "quadrant" (sector) per stardate. We use a square rule for gradients, along the lines of *Star Trek*'s cube rule.

## Energy and Energon Crystals
Energy is measured in *energy units*, which are cheerfully handwaved, and not converted to actual SI units at any point. Every unit has a *main power bus* which can hold a specified number of energy units. Equipment on board is powered by drawing energy from the main power bus.

Ships and other units in the *Stellar Union* universe are powered by *energon crystals*, a completely made up super-mineral along the lines of similar power sources in the source material. Each unit has a *main reactor* with a certain number of crystals in it. Each crystal in a unit's main reactor can add 100 units of energy to the ship's main power bus per minute, up to the maximum capacity of the bus. 

Ships and other units also have *batteries*, containing a supply of additional energy to power the ship's life support, sensors, communications, and control systems when the main power bus is exhausted. The batteries have enough capacity to keep the interior environment going for as long as the game needs them to, unless the exhaustion of long-used or damaged batteries is a plot point. Large, power-intensive systems such as the engines, shields, and weapons draw too much power to be run from battery power, unless a desperate plan to suddenly exhaust the batteries to produce a momentary effect is a plot point.

## Movement
Ships have a "drive efficiency" rating that measures the number of millisectors of distance that the ship can travel per unit of energy at its cruising speed or less. A cruiser with an efficiency of 100 would require 

## Firing Arcs
Ships and other units have eight firing arcs of 45 degrees each, numbered 1 through 8 clockwise from the bow. Firing arc boundaries are biased toward the bow: arc 1 is 0 to 45, 2 from 46 to 90, et cetera, but on the port side, arc 8 is 315 to 359, arc 7 is 270 to 314, and so forth. There's an additional arc 0, covering 22 degrees on either side of the bow, from 338 to 22. Weapons listed as bearing on none of the eight standard arcs bear on arc 0 instead.

Shield boundaries are defined by pairs of firing arcs: the forward shields cover arcs 8 and 1, the starboard shields cover arcs 2 and 3, the aft shields cover arcs 4 and 5, and the port shields cover arcs 6 and 7.

## Shields and Force Fields
Ships and other units have four shield emitters, one covering each shield arc. A ship has one shield energy capacitor, which has a specified maximum capacity, and from which energy is drawn to oppose incoming fire. Each shield emitter has a maximum energy rating, which specifies how many units of power it can draw from the shield capacitor to oppose an incoming hit. Damage to the shield emitter can reduce this number, possibly to zero.

Energy in the shield capacitor is applied to incoming hits on a 1:1 basis, reducing the energy of the hit, possibly to zero. No internal damage occurs if the energy is fully absorbed by the shield.

Energy that exceeds the amount absorbed by the facing shield hits the *structural integrity field*, which draws directly from the main power bus. Energy is deducted on a 1:1 basis, and for every 400 points deducted, or fraction thereof, one ship's system is damaged. (The order in which this happens is specified by the ship's design and the direction of the incoming fire.)

Energy that exceeds the remaining contents of the ship's main power bus will *wreck* the ship. Wrecked ships have one system permanently destroyed per 25 points of damage that they take, and will show up on other units' sensors as venting atmosphere. If the ship that the PC is aboard is wrecked, various rooms in the ship's map will become inaccessible, or dangerous to traverse, and the PC will be killed if they're in a compartment destroyed in this way. Wreck damage that hits the ship's main reactor will cause the ship to *explode.*

## Energy Projectors
The basic offensive weapon mounted by most ships is the *energy projector*, similar to lasers and phasers from other science fiction settings. Energy 

## Depolarizers
Quellan ships, starting with the Q6, mount the A-drive depolarizer as their main weapon. 

## Missiles and Torpedoes