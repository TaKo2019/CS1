module listtest

import list
import nat
import bool


lO: Nat
lO = len (O :: nil)

l1: Nat
l1 = len (true :: nil)

l2: Nat
l2 = len nil{a = nat}

l3: list bool
l3 = true :: false :: true :: true :: nil

--lab 10/15
l4: list bool
l4 = map evenb(O::(S O)::(S(S O))::(S(S(S(S O)))):: nil)

l5: list nat
l5 = filter evenb(O::(S O)::(S(S O))::(S(S(S(S O)))):: nil)
