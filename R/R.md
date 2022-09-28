# R
Statistical open-source programming language.

R is built on 2 fundamentals: data structures & functions.

- Named values <- variables given a name (e.g. x <- 3; where <- is an assignment operator)
- Vectors <- arrays/lists. Must be same dtype****
- Numeric vector <- ordered list of numbers; numlist <- c(0,1,2,3,4,5,6,7,8,9) where c() function means 'concatenate', in data environment the object is displayed as: num [1:10] 0 1 2 3 4 5 6 7 8 9, where num is data type and brackets contain rows (1) and columns (10).
- Matrix <- a vector of vectors, each value is same data type.
- DataFrame <- exactly like Pandas
- Tibble <- recent data object brought in by tidyverse; optimized DataFrame with extra metadata and features.

### Functions
structure of functions in R similar to Python:

function_name <- function(arg1, arg2=T, ...) {
    BODY OF FUNCTION

    return VALUE
}

Info on defined functions in R: e.g. ?c() will show info about the function.

- for loop: e.g. nchar() returns the number of characters
                for (prez in presidents) {
                    if (nchar(prez) > 5) {
                        next
                    }
                        else {
                        print(prez)
                        }
                    }  

### Pipe operator
%>% allows simplification of code

e.g. precipitation %>% sd() %>% round(2) * this rounds the standard deviation to 2 decimal places.

### Testing Hypotheses & Plotting/EDA in R
Typical flow: 
EDA --> Hypothesis --> Experiment --> Hypothesis testing --> Results (return to EDA/reformulate Hypothesis if it wasn't supported in the results)

**Frequentist vs Bayesian statistics**
- P-values are not hard-and-fast; just shows the likelihood of a relationship between groups. Bayesian a priori helps put this in perspective.

Goal is to reject Null Hypothesis, but it's never absolute.

Steps for Testing Hypothesis:
- Determine hypothesis/null hypothesis
- identify appropriate statistical test(s)
- determine acceptable significance
- compute the p-value
- reject (or fail to reject) the null hypothesis and generate conclusion

What if you have a lot of samples to comapre? Use ANOVA (Analysis of variance)
ANOVA compares means across all samples and detertimes if there is a significant difference in at least one sample. The ANOVA test is based on a null-hypothesis (i.e. there is no significant difference between groups).

### Statistical Data Types
#### Categorical: qualitative and descriptive data characteristics
- Dichotomous: data collected from either 1 of 2 categories (binary).
- Ordinal: ranked order/value scale.
- Nominal: names/labels for other measures.

#### Numeric: quantitative measurement upon which analysis can be done
- Continuous: able to be infinitely subdivided. Typically uses decimal places.
- Interval: data spaced out evenly on a scale, but does not use decimal places. It cannot be multiplied or divided, however it can be grouped together in buckets. AKA integer data.

### Distributions
Normal distribution follows the 68-95-99.7 rule: 
- 68.27% of the data falls within 1 standard deviation
- 95.45% of the data falls within 2 standard deviations
- 99.73% of the data falls within 3 standard deviations

![normal_distribution](https://github.com/conorwhanson/coding_reference/blob/main/R/resources/normal_dist.png)

**IF P-VALUE IS GREATER THAN 0.05 THEN DATA IS CONSIDERED NORMALLY DISTRIBUTED**

![p_value](https://github.com/conorwhanson/coding_reference/blob/main/R/resources/p_value_significance.png)

### One-tailed vs. Two-tailed test
- One-tailed describes one side of the distribution ("x is greater/less than y")
    - If the hypotheses and stats test are two-tailed then use the p-value from stats test AS-IS
- Two-tailed describes both sides of distribution ("x is not/equal to y")
    - If the hypotheses one-tailed but stats test two-tailed then divide stats test p-value by 2

### Errors
- Type 1: false positive; we reject the null hypothesis when it is true (i.e. actually chance but we attributed it to something else)
- Type 2: false negative; we fail to reject the null hypothesis when it is false (i.e. assume it was chance, but it wasn't)

### Dataset ideals
**Population dataset** is one that contains measurements from every possible outcome, circumstance, condition, etc. All possible elements inculded.

**Sample** is a subset of the population dataset. 

How does this represent the population dataset?? **Compare mean & standard deviation of each via random sampling**
(do this via sample() or sample_n() from dplyr library)

### Correlation
How strongly or weakly two variables are related. Calculated with correlation coefficient (denoted as r, negative or positive depending on direction of relationship)

![correlation](https://github.com/conorwhanson/coding_reference/blob/main/R/resources/Pearson_corr_coeff.png)

### Linear Regression
A statistical model used to predict a continuous dependent var based on 1 (or more) independent vars fitted to an equation line.

![line_equation](https://github.com/conorwhanson/coding_reference/blob/main/R/resources/ymxb.png)

Simple linear regression model: 1 independent variable
Multiple linear regression model: 2 or more independent variables

Uses: predictive modeling, explore variability of 2 correlated variables.

### Chi-squared Test
Used to compare distribution of frequencies of categorical data across two groups. 

Dataset **must** meet the following suppositions:
1. Each subject in the group contributes to **only one** frequency (i.e. sum of frequencies = total # of subjects in the dataset)
2. Each unique value's observation is equally probable
3. A minimum of **5** observed instances per unique value (in a 2x2 chi-squared table)
4. With larger tables there must be at least 1 observation for every unique value & >= 80% of all unique values have >=5 observations.

### A/B Testing
A randomized controlled experiment using an A group (unchanged) and a B group (changed) to test potential changes with a success metric.

A stronger expected effect size requires fewer data points.

### Asking the Right Questions is Crucial

Are 2 groups statistically different? **T-Test with 1 dichotomous independent var and 1 continuous dependent var**

Can a single continuous dependent var be predicted using 1 other independent var? Multiple independent vars with 1 dependent? **Regression Analysis**

Are multiple categorical variables closely linked in a dataset? Are these distributions equal in frequency? **Chi-Squared test**

