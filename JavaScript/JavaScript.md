# JavaScript
Fundamental building block for every website on the internet; Web-based language.

Back to the CompSci basics:
1. Loops
2. Conditionals
3. Variables/Data Structure
4. Functions

JavaScript is the muscle of websites; it powers the actions/interactions. This creates interactive and dynamic websites.

JS very function-heavy***

JS listens for events and responds accordingly. Used to request info from a server. You can also dynamically modify HTML elements (i.e. interact with and respond to user).

ES6 update was meant to standardize the syntax of JS. This streamlines the coding process, both reading and writing. Shorter code is the big pro here which increases readability, and there are more ways to complete a task. However, the big con is an increase in complexity, and therefore chances for bugs.

You need a website to run JS. It's commonly found in HTML.

Logically and syntactically similar to Python.
E.g.: var name = "Mad Max";

Code blocks are denoted by {}

## Statements & Expressions
Statements perform actions
Expressions create values

## JS Variable
- var = generic variable irrespective of dtype (Python automatically does this)
- let = temp variable (for temp i in list:)
- const = immutable variable

JS String: console.log(`Hello ${name}!`) 

## JS Functions
function printHello(){
	console.log("Hello there!");
}

return 

## JS Conditionals
JS uses {} instead of indentation
e.g. if (x === 1) {
    console.log("x is equal to 1");
}

Python elif is else if in JS******

## JS Loops

         \/start \/end  \/increment
for (var i = 0; i < 10; i++){
    console.log("Iteration #", i;)
}

var students = ["Johnny", "Bodhi", "Pappas"];
for (var j = 0: j < students.lengths; j++){
    console.log(students, j;)
}

## JS has 3 different equal signs: 
= assigns value; 
== equates values only (even 0 == "");  
=== checks for strict equality (value & dtype)

## DTypes & Structures
JS Array === Python list
JS Objects === Python dicts