module trafficcolor

data trafficcolor = red|yellow|green

nextcolor:trafficcolor->trafficcolor
nextcolor red = green
nextcolor green = yellow
nextcolor yellow = red
