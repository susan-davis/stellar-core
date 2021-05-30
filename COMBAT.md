# Combat in *Stellar Union*
## Sectors, Quadrants, and Distance
Space is divided into 8 x 8 *quadrants*, which are divided into 10 x 10 *sectors*. Sectors can further be divided into 10 x 10 *subsectors*; this happens normally under the hood, and is displayed when the PC ship enters a sector containing some other object of interest such as a gravity well or an enemy ship. There's an outside chance that we might enlarge quadrants to 10 x 10 at some point before the release of the first game, but that makes quadrant maps on a 40 x 24 Commodore 64 screen, or 80 x 24 old school terminal, awkward.

Distances are measured in *millisectors*. A sector is 1000 millisectors across, a subsector 100, and a position within a subsector 10. These are necessary because we only have unsigned integers available for math. 

Eventually, there might be shuttlecraft movement involving subdivisions of positions into a 5 x 5 grid of 2-millisector squares, so that a horizontal move is 2 millisectors and a diagonal one 3. That's at a different scale than ship combat, though.

We use "quadrant" and "sector" in a different way than classic `STARTREK`, which called a sector a "quadrant" and a subsector a "sector."

## Movement
Ships have a "drive efficiency" rating that measures the number of millisectors of distance that the ship can travel per unit of energy. A cruiser with an efficiency of 100 would 
<!--stackedit_data:
eyJoaXN0b3J5IjpbNDg0MTU3MDA2LDE0NjMzMTQxODRdfQ==
-->