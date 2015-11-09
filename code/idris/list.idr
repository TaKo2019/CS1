module list

import nat
import pair
import eq
import bool
import Serialize
import ite

infixr 7 ::,++

data list a = nil| (::) a (list a)

len: list a -> nat
len nil = O
len (a :: b) = S(len b)

append: list a -> list a -> list a
append nil a = a
append (x :: l1') l2 = x :: (append l1' l2)

-- Append with an infix operator
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

||| map a function over the elements of a list
map: (a->b)->list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

--ite function


--Filter
||| give a list and a predicate on elements
||| return the sublist of elements for which
||| the predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                      (filter f t)

--Fold function
foldr: (a -> a ->a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                  true
                  (member v t)

instance (eq a) => eq(list a) where
  eql nil nil = true
  eql (h::t) nil  = false
  eql nil (h::t)  = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

subsetElement: (eq a) => list a -> list a -> bool
subsetElement nil (h1::t1) = true
subsetElement (h1::t1) nil = false
subsetElement (h1::t1) l2 = and (member h1 l2) (subsetElement t1 l2)

sameElement: (eq a) => list a -> list a -> bool
sameElement l1 l2 = and (subsetElement l1 l2) (subsetElement l2 l1)

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList(h::t) = (toString h) ++ "," ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString (L) = "["++(toStringList L)++"]"
  toString (h1::t1) = "[" ++ (toString h1) ++","++ (toString t1)
