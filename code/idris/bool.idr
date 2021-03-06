-- total functions
-- block comments
-- symbolic arguments
-- pattern matching: any argument

module bool

import Serialize

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

--Function to check if two values are true
and: bool -> bool -> bool
and true true = true
and _ _ = false

--Function to check if at least one value is true
or: bool-> bool -> bool
or  false false = false
or _ _ = true

-- Function to return false if both are true
nand:bool -> bool -> bool
nand true true = false
nand _ _ = true

--Function to return true if only one value is true
xor: bool -> bool -> bool
xor  true false = true
xor  false true = true
xor _ _ = false

eql_bool:bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"
