module nattest

import nat

-- Test values
-- Here are the test values for the new partial expression functions
--The older test for the older functions have been moved to nattest.idr.old

--Test for the add function

add1: nat
add1 = add O (S O)
--expect S O

add2: nat
add2 = add (S O) (S(S O))
--expect (S(S(S O)))

--Test for mult function

mult1: nat
mult1 = mult O (S(S(S(S(S O)))))
--expect O

mult2: nat
mult2 = mult (S(S O)) (S(S(S O)))
--expect (S(S(S(S(S(S O))))))

--Test for fact function
fact1: nat
fact1 = fact O
--expect (S O)

fact2: nat
fact2 = fact (S(S(S O)))
--Expect (S(S(S(S(S(S O))))))

--Test for the fibon function
fibon1: nat
fibon1 = fibon O
--expect O

fibon2: nat
fibon2 = fibon (S O)
--expect (S O)

fibon3: nat
fibon3 = fibon(S(S(S O)))
--expect (S(S O))

--Test for the subtr function
subtr1: nat
subtr1 = subtr (S(S(S O))) O
--expect (S(S(S O)))

subtr2: nat
subtr2 = subtr O (S(S(S O)))
--expect O

subtr3: nat
subtr3 = subtr (S(S(S(S(S O))))) (S(S O))
--expect (S(S(S O)))

--Test for the exp function
exp1: nat
exp1 = exp (S(S(S(S(S O))))) O
--expect (S O)

exp2: nat
exp2 = exp (S(S(S(S(S O))))) (S O)
-- expect S(S(S(S(S O))))

exp3: nat
exp3 = exp (S(S O)) (S(S(S O)))
--expect (S(S(S(S(S(S(S(S O))))))))

--Test for the le function
le1: bool
le1 = le O (S(S(S O)))
--expect true

le2: bool
le2 = le (S(S O)) O
--expect false

le3: bool
le3 = le (S(S(S(S O)))) (S(S O))
--expect false

--Tests for the eq function
eq1: bool
eq1 = eq O O
--expect true

eq2: bool
eq2 = eq (S(S(S O))) O
--expect false

eq3: bool
eq3 = eq O (S(S(S O)))
--expect false

eq4: bool
eq4 = eq (S(S(S O))) (S(S(S(S O))))
--expect false

eq5: bool
eq5 = eq (S(S O)) (S(S O))
--expect true

--Test for the gt function
gt1: bool
gt1 = gt O O
--expect false

gt2: bool
gt2 = gt (S(S(S O))) (S(S O))
--expect true

--Test for ge function
ge1: bool
ge1 = ge O (S(S(S O)))
--expect false

ge2: bool
ge2 = ge O O
--expect true

ge3: bool
ge3 = ge (S(S(S(S(S(S O)))))) (S(S(S(S(S O)))))
--expect true

ge4: bool
ge4 = ge (S(S(S(S(S O))))) (S(S(S(S(S(S O))))))
--expect false

--Test for the lt function
lt1: bool
lt1 = lt O (S(S O))
--expect true

lt2: bool
lt2 = lt (S O) (S O)
--expect false

lt3: bool
lt3 = lt (S(S(S O))) (S O)
--expect false
