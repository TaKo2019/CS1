module set_spec_test

import set_adt_hw
import bool
import pair
import list
import nat
import eq
import Serialize
import option
import ite
import list

--Test sets
sA: set bool
sA= (mkSet(true::false::nil))

sNil:set bool
sNil = (mkSet nil)

--Test for isEmpty
isEmptyA: bool
isEmptyA = isEmpty (sNil)
--expect true

isEmptyB: bool
isEmptyB = isEmpty (mkSet (true::nil))
--expect false

--Test for set_remove
set_removeA:(eq a) => set a
set_removeA = set_remove true sA
--expect false::nil

set_cardinalityA: nat
set_cardinalityA = set_cardinality sNil
--expect O

set_cardinalityB:nat
set_cardinalityB = set_cardinality sA
--expect (S(S O))

set_memberA: bool
set_memberA = set_member true sA
--expect true

set_memberB: bool
set_memberB = set_member (S O) sA
--expect false
