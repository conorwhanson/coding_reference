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

Goal is to reject Null Hypothesis, but it's never absolute.

Steps for Testing Hypothesis:
- Determine hypothesis/null hypothesis
- identify appropriate statistical test(s)
- determine acceptable significance
- compute the p-value
- 

What if you have a lot of samples to comapre? Use ANOVA (Analysis of variance)
ANOVA compares means across all samples and detertimes if there is a significant difference in at least one sample. The ANOVA test is based on a null-hypothesis (i.e. there is no significant difference between groups).

### Statistical Data Types
###### Categorical: qualitative and descriptive data characteristics
- Dichotomous: data collected from either 1 of 2 categories (binary).
- Ordinal: ranked order/value scale.
- Nominal: names/labels for other measures.

###### Numeric: quantitative measurement upon which analysis can be done
- Continuous: able to be infinitely subdivided. Typically uses decimal places.
- Interval: data spaced out evenly on a scale, but does not use decimal places. It cannot be multiplied or divided, however it can be grouped together in buckets. AKA integer data.

### Distributions
Normal distribution follows the 68-95-99.7 rule: 
- 68.27% of the data falls within 1 standard deviation
- 95.45% of the data falls within 2 standard deviations
- 99.73% of the data falls within 3 standard deviations

![normal_distribution](https://github.com/conorwhanson/coding_reference/blob/main/R/resources/normal_dist.png)

