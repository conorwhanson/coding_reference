Order of Operations: Parentheses, Expontentiation, Multiply/Divide, Add/Subtract

Tuples are immuatble

Dictionaries store collection of data in key-value pairs (key:value). Dictionaries must always be strings. Syntax is {}

Extract data from dictionary with a key

Dictionaries store data with more context/precision.

Lists are created with [] hard brackets

Sets are created with {} curly brackets

If condition:
    statement 1
    statement 2
else

if condtion:
    statement
elif condtion2:
    statement
elif condition3:
    statement
else condition4:

When printing items from a list or dictionary, use f string:
e.g. print("blah blah blah " + str(int) + " blah blah")
with f string: print(f"blah blah blah {int, calculation, etc} blah blah")

### List comprehensions
`new_list = [i * 2 for i in old_list]`
               ^ Logic in front (calculating values)

`new_list = [i * 2 for i in old_list if i % 2 == 0]`
                                     ^ Filtering happens at end
                                
