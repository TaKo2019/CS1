module colorwheel

import pair

data primary = red | blue | yellow

data mixed = deepred |  deepblue | deepyellow | violet | green | orange

colormix: pair primary primary -> mixed
colormix (mkPair red red) = deepred
colormix (mkPair red blue) = violet
colormix (mkPair red yellow) = orange
colormix (mkPair blue red) = violet
colormix (mkPair blue blue) = deepblue
colormix (mkPair blue yellow) = green
colormix (mkPair yellow blue) = green
colormix (mkPair yellow red) = orange
colormix (mkPair yellow yellow) = deepyellow
