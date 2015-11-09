module set

import list
import bool
import eq
import nat

||| mkSet is meant to be private
data set a = mkSet(list a)

||| a starting point for building any set
new_set: set a
new_set = mkSet nil

|||insert operation
set_insert:(eq a) => a -> set a -> set a
set_insert v (mkSet L) = ite (member v L)
                        (mkSet L)
                        (mkSet (v::L))

eql_set: (eq a) => (set a) -> set a -> bool
eql_set (mkSet s1) (mkSet s2) = sameElement s1 s2

instance (eq a) => eq (set a) where
  eql s1 s2 = eql_set s1 s2
