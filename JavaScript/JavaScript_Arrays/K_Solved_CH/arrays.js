// A JavaScript array is much like a Python list
// Here, start with a data array
var data = ["a","b","c","d"];

// Display the array in console
console.log(data);

// Use indexing to access an array item
console.log(data[0]);
console.log(data[3]);

// Use push() to append an item to an array
data.push("e");

// Use slice() to return selected items of an array
var slice1 = data.slice(0,2);
console.log(slice1);

// Return the first three items of an array
var slice2 = data.slice(0,3);
console.log(slice2);

// Return the second and third items of an array
var slice3 = data.slice(1,3);
console.log(slice3)

// Use join() to return items of an array into a single string
console.log(data.join(","));


// A JavaScript string
var SoundOfMusic = "How do you fix a problem like Maria?"

// Use indexing to access a string character
console.log(SoundOfMusic[0]);
console.log(SoundOfMusic[5]);


// Split a string into an array of substrings
// Here, split the string where spaces are found
var splitStr = SoundOfMusic.split(" ");
console.log(splitStr)