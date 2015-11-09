module boolTest

import bool

--Here are the test for the new bool functions with partial evaluation
--The old tests from boolTest.idr are now in the boolTest.idr.old file

--Here is the test for the and functions
and1: bool
and1 = and true true
--expect true

and2: bool
and2 = and true false
--expect false

--Tests for the or function
or1: bool
or1 = or false false
--expect false

or2: bool
or2 = or false true
-- expect true

--Tests for the Nand function
nand1: bool
nand1 = nand true true
--expect false

nand2: bool
nand2 = nand false false
--expect true

--Tests for the Xor function
xor1: bool
xor1 = xor true false
--expect true

xor2: bool
xor2 = xor false true
--expect true

xor3: bool
xor3 = xor true true
--expect false
