generate Male_Nonmarried = Male*Nonmarried
generate Education_Male = Education*Male
generate Education_Nonmarried = Education*Nonmarried
generate Education_US = Education*US
generate Age_Education = Age*Education
generate Age2_Education = Age2*Education

eststo: quietly 
regress Wage Age Education Male Nonmarried US, robust
regress lnWage Age Age2 Education Male Nonmarried US, robust
regress lnWage Age Age2 Education Male Nonmarried US Education_Nonmarried, robust
regress lnWage Age Age2 Education Male Nonmarried US Age_Education Age2_Education, robust
regress lnWage Age Age2 Education Male Nonmarried US Male_Nonmarried Education_Nonmarried, robust
regress lnWage Age Age2 Education Male Nonmarried US Male_Nonmarried Education_Male Education_Nonmarried Education_US Age_Education Age2_Education, robust


esttab using regression.tex, label nostar title(Regression table\label{tab1})

generate Male_Nonmarried = Male*Nonmarried
generate Education_Male = Education*Male
generate Education_Nonmarried = Education*Nonmarried
generate Education_US = Education*US
generate Age_Education = Age*Education
generate Age2_Education = Age2*Education
regress Wage Age Education Male Nonmarried US, robust
test (Age=0)(Education=0)(Male=0)(Nonmarried=0)(US=0)
regress lnWage Age Age2 Education Male Nonmarried US, robust
test (Age=0)(Age2=0)(Education=0)(Male=0)(Nonmarried=0)(US=0)
regress lnWage Age Age2 Education Male Nonmarried US Education_Nonmarried, robust
test (Age=0)(Age2=0)(Education=0)(Male=0)(Nonmarried=0)(US=0)(Education_Nonmarried=0)
regress lnWage Age Age2 Education Male Nonmarried US Age_Education Age2_Education, robust
test (Age=0)(Age2=0)(Education=0)(Male=0)(Nonmarried=0)(US=0)(Age_Education=0)(Age2_Education=0)
regress lnWage Age Age2 Education Male Nonmarried US Male_Nonmarried Education_Nonmarried, robust
test (Age=0)(Age2=0)(Education=0)(Male=0)(Nonmarried=0)(US=0)(Male_Nonmarried=0)(Education_Nonmarried=0)
test (Male_Nonmarried=0)(Education_Nonmarried=0)
regress lnWage Age Age2 Education Male Nonmarried US Male_Nonmarried Education_Male Education_Nonmarried Education_US Age_Education Age2_Education, robust
test (Age=0)(Age2=0)(Education=0)(Male=0)(Nonmarried=0)(US=0)(Male_Nonmarried=0)(Education_Male=0)(Education_Nonmarried=0)(Education_US=0)(Age_Education=0)(Age2_Education=0)
test (Age_Education=0)(Age2_Education=0)
test (Male_Nonmarried=0)(Education_Male=0)(Education_Nonmarried=0)(Education_US=0)(Age_Education=0)(Age2_Education=0)