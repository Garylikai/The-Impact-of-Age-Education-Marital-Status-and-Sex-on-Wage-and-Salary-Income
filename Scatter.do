scatter Wage Age || lfit Wage Age
scatter Wage Education || lfit Wage Age

scatter Wage Age if Nonmarried == 1 || scatter Wage Age if Nonmarried == 0, legend(order(1 "Nonmarried" 2 "Others"))
scatter Wage Education if Nonmarried == 1 || scatter Wage Education if Nonmarried == 0, legend(order(1 "Nonmarried" 2 "Others"))

scatter Wage Age if Male == 1 || scatter Wage Age if Male == 0, legend(order(1 "Male" 2 "Others"))
scatter Wage Education if Male == 1 || scatter Wage Education if Male == 0, legend(order(1 "Male" 2 "Others"))

scatter Wage Age if US == 1 || scatter Wage Age if Mexico == 1 || scatter Wage Age if Cuba == 1 || scatter Wage Age if China == 1, legend(order(1 "US" 2 "Mexico" 3 "Cuba" 4 "China"))
scatter Wage Education if US == 1 || scatter Wage Education if Mexico == 1 || scatter Wage Education if Cuba == 1 || scatter Wage Education if China == 1, legend(order(1 "US" 2 "Mexico" 3 "Cuba" 4 "China"))

order Wage
order Male, a(Education)
order Nonmarried, a(Male)