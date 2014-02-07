     Engr 120 Final Project: Exxon-Valdez Oil Spill Simulation
              Copyright (C) 2012 Cameron Carroll
            Released under GNU GPL (See License.txt)

Purpose: 

Purpose: Simulation of Exxon-Valdez oil spill;
   Simulation acts according to the following rules:
   1. Some percentage, (E%) evaporates out of a given grid.
   2. Of the remaining oil in that grid, 10 / (10 + V) of the oil remains,
   where V is wind velocity in miles per hour.
   3. Of the oil that dos not evaporate and does not remain,
   40% move immediately to the east,
   20% moves into the northeast and southeast grids (each),
   10% moves into the north and south grids (each).

 These rules are applied over a user-defined number of iterations, resulting
 in resultant matrices for a user-defined step-size.