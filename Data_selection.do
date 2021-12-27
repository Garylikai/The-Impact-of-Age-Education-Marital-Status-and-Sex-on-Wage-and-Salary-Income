keep age sex marst educ bpl incwage
generate Male = 1 if sex == 1
replace Male = 0 if sex == 2
drop if sex == 9
drop if bpl == 99999
drop if educ == 999
drop if marst == 9
generate Nonmarried = 1 if marst == 6
replace Nonmarried = 0 if marst != 6
generate US = 1 if bpl == 9900
replace US = 0 if bpl != 9900
drop sex
drop marst
drop bpl
label drop EDUC
sort incwage
keep if incwage != 9999999
keep if incwage != 0
drop in 85645/182243
rename (age incwage educ) (Age Wage Education)
generate lnWage = ln(Wage)
generate Age2 = Age^2

lv Wage
keep if inrange(Wage, r(l_F)-(1.5*(r(u_F)-r(l_F))), r(u_F)+(1.5*(r(u_F)-r(l_F))))
lv Education
keep if inrange(Education, r(l_F)-(1.5*(r(u_F)-r(l_F))), r(u_F)+(1.5*(r(u_F)-r(l_F))))
lv Age
keep if inrange(Age, r(l_F)-(1.5*(r(u_F)-r(l_F))), r(u_F)+(1.5*(r(u_F)-r(l_F))))
drop in 78948/80148

lv lnWage
keep if inrange(lnWage, r(l_F)-(1.5*(r(u_F)-r(l_F))), r(u_F)+(1.5*(r(u_F)-r(l_F))))
drop in 1/2936

order Age2
order Age