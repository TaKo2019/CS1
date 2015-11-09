module Person

import list
import bool

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
    constructor MkPerson
    name : String
    age : Nat
    height: Nat
    gender: bool

-- An example value of type Person
p: Person
p = MkPerson "Tommy" 3 77 false

p2: Person
p2 = MkPerson "Haruko" 3 77 true

-- And now here's the key idea: The 
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

-- Field override functions
setName: Person -> String -> Person
setName p n = record { name = n } p

setAge: Person -> Nat -> Person
setAge p a = record { age = a } p

setHeight: Person -> Nat -> Person
setHeight p h = record { height = h } p

--Iterating through lists to get a list of ages
mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h)::(mapAge t)

people: list Person
people = p::p2::nil

