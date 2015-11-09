module unit

import eq
import bool
import Serialize

data unit = mkUnit

u:unit
u = mkUnit

v:unit
v = mkUnit

unit_id: unit -> unit
unit_id mkUnit = mkUnit

eql_unit: unit -> unit -> bool
eql_unit u1 u2 = true

instance eq unit where
  eql u1 u2 = eql_unit u1 u2

instance Serialize unit where
  toString u = "()"
