module BoxTest

import Box
import bool
import unit

box1: Box bool
box1 = (mkBox true)

box2: Box unit
box2= (mkBox mkUnit)

box3: Box Int
box3= (mkBox 18)

