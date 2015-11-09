module dna

import pair
import list
import bool
import nat

data bases = A|G|T|C

id_base: bases -> bases -> nat
id_base A A = (S O)
id_base G G = (S O)
id_base T T = (S O)
id_base C C = (S O)
id_base _ _ = (S O)

boolnat: bool -> nat
boolnat true = (S O)
boolnat false = O

complement_base: bases -> bases
complement_base A = G
complement_base G = A
complement_base T = C
complement_base C = T

list_base: list bases -> list bases
list_base nil = nil
list_base (h::t) = (complement_base h)::(list_base t)

strand1: list(pair bases bases) ->list bases
strand1 nil = nil
strand1 (h::t) = (fst h)::(strand1 t)

strand2: list(pair bases bases) -> list bases
strand2 nil = nil
strand2 (h::t) = (fst h)::(strand2 t)

pairlister: list bases -> list (pair bases bases)
pairlister nil = nil
pairlister (h::t) = (mkPair h (complement_base h))::(pairlister t)

--pairlister2: list bases -> list (pair bases bases)
--pairlister2 nil = nil
--pairlister2 L = map complement_base L

{- Could not get this part of the code to work
Getting map to work with functions with two
inputs was just too hard
countBase: list bases -> bases -> nat
countBase nil x = O
countBase L x = list.foldr add O (map id_base L x)
-}

id_bases2: bases -> bases -> bool
id_bases2 A A = true
id_bases2 G G = true
id_bases2 T T = true
id_bases2 C C = true
id_bases2 _ _ = false

base_add: list bases -> bases -> list nat
base_add nil _ = nil
base_add (h::t) b = (ite (id_bases2 h b) ((S O)::(base_add t b)) (O::(base_add t b)))

countBase: list bases -> bases -> nat
countBase nil x = O
countBase L b =list.foldr add O (base_add L b)
