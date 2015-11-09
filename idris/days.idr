module days

data days = monday | tuesday | wednesday | thursday | friday | saturday | sunday

nextday: days -> days
nextday monday = tuesday
nextday tuesday = wednesday
nextday wednesday = thursday
nextday thursday = friday
nextday friday = saturday
nextday saturday = sunday

nextweekday: days -> days
nextweekday monday = tuesday
nextweekday tuesday = wednesday
nextweekday wednesday = thursday
nextweekday thursday = friday
nextweekday friday = monday
nextweekday saturday = monday
nextweekday sunday = monday
