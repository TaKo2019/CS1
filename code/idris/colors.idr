module colors

import pair
import bool

data color = Red | Green | Blue | Yellow | Cyan | Magenta

complements: pair color color -> bool
complements (mkPair Red Cyan) = true
complements (mkPair Green Magenta) = true
complements (mkPair Blue Yellow) = true
complements (mkPair Yellow Blue) = true
complements (mkPair Cyan Red) = true
complements (mkPair Magenta Green) = true

mixink: pair color color -> color
mixink (mkPair Yellow Magenta) = Red
mixink (mkPair Yellow Cyan) = Green
mixink (mkPair Cyan Magenta ) = Blue
mixink (mkPair Magenta Yellow) = Red
mixink (mkPair Cyan Yellow) = Green
mixink (mkPair Magenta Cyan) = Blue
