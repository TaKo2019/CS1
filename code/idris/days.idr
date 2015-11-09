module Days

data Days = Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday

nextDay: Days->Days
nextDay Monday = Tuesday
nextDay Tuesday = Wednesday
nextDay Wednesday = Thursday
nextDay Thursday = Friday
nextDay Friday = Saturday
nextDay Saturday = Sunday
nextDay _ = Monday

nextWeekday: Days -> Days
nextWeekday Monday = Tuesday
nextWeekday Tuesday = Wednesday
nextWeekday Wednesday = Thursday
nextWeekday Thursday = Friday
nextWeekday _ = Monday
