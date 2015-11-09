module nat

import public bool
import public pair
import eq
import Serialize

data nat = O | S nat


||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false


||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n


||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

-- odd numbers
oddb: nat -> bool
oddb n = not (evenb n)


add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)


||| given a pair of natural numbers, return its sum
mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add (mult n m) m 

-- HOMEWORK 14 --Factorial

--For the factorial I have simply used multiplication recursively. I
--multiply (S n) with an ever decreasing value. 
fact: nat -> nat
fact O = (S O)
fact (S n) = mult (S n) (fact n)

fibon: nat -> nat
fibon O = O
fibon (S O) = (S O)
fibon(S(S n)) = add (fibon (S n)) (fibon n)


-- Subscraption (Subtraction)
-- This function only works for first >= second
-- Otherwise, it just returns O
subtr: nat -> nat -> nat
subtr  n O = n
subtr  O n = O
subtr (S n) (S m) = (subtr n m)

exp: nat -> nat -> nat
exp b O = (S O)
exp b (S O) = b
exp b (S e) = mult (exp b e) b

--divs: pair nat nat -> nat
--divs (mkPair m O) = m
--divs (mkPair O n) = O
--divs (mkPair n m) = S( divs( mkPair( subtr( mkPair(n m)) m)))
 
--Less than or eql_natual to function
le:nat -> nat -> bool
le O n = true
le (S n) O = false
le a b = le (subtr a b) (subtr b a)

--Function that checks if two values are eql_natual
eql_nat: nat -> nat -> bool
eql_nat  O O = true
eql_nat  n O = false
eql_nat  O n = false
eql_nat  a b = eql_nat (subtr  a b) (subtr b a)

--Greater than function
gt: nat -> nat -> bool
gt a b = not( le a b)

--Greater than or eql_natual to function
ge: nat -> nat -> bool
ge O (S n) = false
ge n O = true
ge (S a) (S b) = ge a b

--Less than function
lt:nat -> nat -> bool
lt a b = not( ge a b)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
