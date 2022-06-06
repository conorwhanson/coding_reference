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
- var = generic variable irrespective of dtype (Python automatically does this). Can be used in entire program.
- let = temp variable (for temp i in list:), only available in particular code block.
- const = immutable variable updated only once.

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

for each loop can *only* be used on lists/arrays:

movieScores.forEach(function(score){
}

Use a forEach loop to iterate through array (numbers) and square each one:
	let numbers = [1,2,3,4,5,6];
	numbers.forEach(function (element) {
		console.log(element **2);
	});

## JS has 3 different equal signs: 
= assigns value; 
== equates values only (even 0 == "");  
=== checks for strict equality (value & dtype);

## DTypes & Structures
JS Array === Python list
JS Objects === Python dicts

In JS dicts you can use dot notation (e.g. dict.name instead of dict['name'] like in Python

D3 a JS library (primarily data-driven) for visualizations to be embedded on a website (not made to create tables or simple tasks in HTML!!!). It is a very large import and has its own syntax.

JQuery a fast, small, lightweight JS library for HTML interaction.

DOM manipulation: manipulate the HTML that appears on the page. JQuery, React, Angular, due.js, node.js ,etc.

## BOOTSTRAP
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

## Event Listeners
transcends libraries; looks for events/action from user or client that then executes an action.
2 main components to EL:
1. Target - reference to the object that did the event/action
2. Handler - function executed in response to the event/action

## Arrow Functions
Shorter and more concise function syntax; all arrow functions are anonymous (don't use 'function' before the name since arrow implies a function, remove curly brackets, add an arrow, remove return and/or console.log).

standard function: function square(num) {
			return num **2;
			}
Arrow function: let square = (num) => num **2;
		console.log(square(10));


## Creating Tables
When appending new data into a table it's always good practice to clear the existing data to remove any filters that would jumble the new data.
			