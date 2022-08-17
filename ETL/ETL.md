# ETL
Extract
Transform
Load

Raw data to cleaned and database pipeline

### 3 Big functions for data transformation:
- Lambdas: functions without names (ambiguous); can transform data without a for loop! They only exist in their local place in the code and cannot be called outside of that place. Fast and effective for small and simple transformations.
lambda arguments : expression

- Regular expressions (regex): search/filter a string for all occurrences of a reg ex and returns matches. These can be used to match patterns. This goes beyond Python to all coding languages, text editors, etc. Typically represented by .*
    - Wildcards: the dot wildcard (e.g. .ought will return 'bought,' 'ought') allows us to match any character. ONLY APPLYS TO LETTER PRECEDING****
    - Sets: allows us to match character contained within square brackets (e.g. [bfs]ought)
    - Escaping: allows us to target characters used in regex (e.g. 'bought\.' so it doesn't use the dot)
    - In Pandas, str.contains() works only in Pandas dataframes but references regex's; importing regex as the specific module works on other things.
    - Groups: identifies a match that is to be extracted out of the string.

NOTE: REGEX ONLY WORKS ON STRINGS

- List comprehensions : uses a conditional expression to do a 1-line for loop, returns a list. Way shorter than a FOR loop.
newlist = [expression for item in iterable if condition == True]

**Limit using Lambdas and list comprehension to replace easy for loops**

Classes organize groups of functions that are related (often classes for E, T, and L)

