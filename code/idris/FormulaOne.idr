module FormulaOne

import relation
import list
import bool
import nat

record FormulaOne where
    constructor MkF1
    name : String
    wins : Nat
    FastestLaps: Nat
    Nationality: String
    Team: String
    GermanInfl: bool
ham: FormulaOne
ham = MkF1 "Hamilton " 9 6 "GBR" "MERCEDES" true

seb: FormulaOne
seb= MkF1 "Vettel " 3 1 "GER" "FERRARI" true

ros: FormulaOne
ros= MkF1 "Rosberg " 3 3 "GER" "MERCEDES" true

ric: FormulaOne
ric= MkF1 "Ricciardo " 0 3 "AUS" "REDBULL" false

drivers: list FormulaOne
drivers = ham::seb::ros::ric::nil

GERteam_driver: list FormulaOne
GERteam_driver = filter GermanInfl drivers

aveGERwins: pair Nat Nat
aveGERwins = ave_rel drivers GermanInfl wins

sumGERwins: Nat
sumGERwins = sum_rel drivers GermanInfl wins

numGER: Nat
numGER = query2 drivers GermanInfl countOne plus 0

GERnames:String
GERnames = query2 drivers GermanInfl name (++) ""
