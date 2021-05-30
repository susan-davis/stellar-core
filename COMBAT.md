# Combat in *Stellar Union*
## Sectors, Quadrants, and Distance
Space is divided into 8 x 8 (or 10 x 10? may revisit) *quadrants*, which are divided into 10 x 10 *sectors*. Sectors can further be divided into 10 x 10 *subsectors*; this happens normally under the hood, and is displayed when the PC ship enters a sector containing some other object of interest such as a gravity well or an enemy ship.

Distances are measured in *millisectors*. A sector is 1000 millisectors across, a subsector 100, and a position within a subsector 10. These are necessary because we only have unsigned integers available for math. 

Eventually, there might be shuttlecraft movement involving subdivisions of positions into a 5 x 5 grid of 2-millisector squares, so that a horizontal move is 2 millisectors and a diagonal one 3. That's at a different scale than ship combat, though.

We use "quadrant" and "sector" in a different 

## Movement
Ships have a "drive efficiency" rating that 

<!--stackedit_data:
eyJoaXN0b3J5IjpbODk2NTQ5MzQyLDE0NjMzMTQxODRdfQ==
-->