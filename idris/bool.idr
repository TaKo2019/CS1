--Modules
module bool

--Data Types
data bool = true | false

--Functions
id: bool -> bool
--id true = true
--id false = false
id b=b

--not: bool -> bool
--not true = false
--not false = true

--yesman: bool -> bool
--yesman true = true
--yesman false = true

consttrue: bool -> bool
consttrue _ = true

noman: bool -> bool
noman true = false
noman false = false
