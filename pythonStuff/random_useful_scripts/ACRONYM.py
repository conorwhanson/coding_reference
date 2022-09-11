user_input = str(input("Enter a phrase to see its acronym."))
text = user_input.split()
a = " "
for i in text:
    a = a+str(i[0]).upper()
print(a)