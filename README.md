# Demographic Characteristics and Wage Income

A Spring 2020 ECON 4400 group project examining associations between wage and salary income and age, education, marital status, sex, and birthplace using a March 2019 IPUMS Current Population Survey extract.

## Analysis

The Stata workflow:

- selects and recodes the variables used in the study;
- removes observations with missing, zero, or extreme wage values;
- compares level and log-wage specifications;
- includes a quadratic age term and selected interactions;
- estimates ordinary least-squares models with heteroskedasticity-robust standard errors; and
- uses joint tests and model diagnostics to compare candidate specifications.

The final analytic sample reported in the paper contains about 71,800 observations. The preferred specification has an \(R^2\) of approximately 0.266 and includes log wage, quadratic age, education, indicator variables, and selected interactions.

The estimates are descriptive associations from observational survey data. They should not be interpreted as causal effects of demographic characteristics.

## Repository contents

- `Data_selection.do` — variable selection, recoding, and sample construction
- `Scatter.do` — exploratory plots
- `Stepwise_regression.do` — candidate regressions, robust inference, and joint tests
- `main.pdf` — final group paper

## Contributors

Kai Li, Sicong Wang, and Zeer Kang.
