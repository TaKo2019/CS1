module option

import bool
import unit

data option t = some t | none

o1: option bool
o1 = none

o2: option bool
o2 = some true

o3: option unit
o3 = some mkUnit
