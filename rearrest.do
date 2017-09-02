cd "/Users/miamiamia/Desktop"

//use rearrest.dta
use rearrest,clear
stset months,failure(censor==)

//cox regression
stcox personal property cage,efron nohr
stcox personal property cage,efron

//check the significance
stcoxkm, by(personal)
stcoxkm, by(property)

//adequate power check
stpower logrank, n(194) p1(.68556701) hratio(1.7667) schoenfeld
stpower logrank, n(194) p1(.18556701) hratio(2.5492) schoenfeld
