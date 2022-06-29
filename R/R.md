# R
Statistical open-source programming language.

R is built on 2 fundamentals: data structures & functions.

- Named values <- variables given a name (e.g. x <- 3; where <- is an assignment operator)
- Vectors <- arrays/lists. Must be same dtype****
- Numeric vector <- ordered list of numbers; numlist <- c(0,1,2,3,4,5,6,7,8,9) where c() function means 'concatenate', in data environment the object is displayed as: num [1:10] 0 1 2 3 4 5 6 7 8 9, where num is data type and brackets contain rows (1) and columns (10).
- Matrix <- a vector of vectors, each value is same data type.
- DataFrame <- exactly like Pandas
- Tibble <- recent data object brought in by tidyverse; optimized DataFrame with extra metadata and features.

## Functions
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

## Pipe operator
%>% allows simplification of code

e.g. precipitation %>% sd() %>% round(2) * this rounds the standard deviation to 2 decimal places.