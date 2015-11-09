module foo

import nat
import list

fancyplus: list nat -> nat
fancyplus nil = O
fancyplus (h::t) = add h (fancyplus t)

fancymult: list nat -> nat
fancymult nil = (S O)
fancymult (h::t) = mult h (fancymult t)

--Point of variation in the fancy function
--binary operator (a->a->a)
--identity element (a)
--type of list element (list a)

fancy: (a->a->a)->a-> (list a)->a
fancy f id nil = id
fancy f id (h::t) = f (h) (fancy f id t)

--These are monoids
--A package that is really easy to use for many usefull applications
