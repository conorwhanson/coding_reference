// Array of movie ratings
var movieScores = [
  4.4,
  3.3,
  5.9,
  8.8,
  1.2,
  5.2,
  7.4,
  7.5,
  7.2,
  9.7,
  4.2,
  6.9
];

// Starting a rating count
var sum = 0;

// Arrays to hold movie scores
var goodMovieScores = [];
var okMovieScores = [];
var badMovieScores = [];

console.log(movieScores);

for (let i = 0; i < movieScores.length; i++){
  var score = movieScores[i];
  sum += score;

  if (score > 7){
    goodMovieScores.push(score);
  } else if ((score >= 5) && (score <= 7)) {
    okMovieScores.push(score);
  } else {
    badMovieScores.push(score);
  }
}

console.log(goodMovieScores);
console.log(okMovieScores);
console.log(badMovieScores);

// var sum = movieScores.reduce((partialSum, a) => partialSum + a, 0);

var avg = sum / movieScores.length;

// Store the length of movie ratings
var numGoodMovies = goodMovieScores.length;
var numOkMovies = okMovieScores.length;
var numBadMovies = badMovieScores.length;

// Print results
console.log("---------");
console.log(`There are ${numGoodMovies} good movies.`);
console.log(`There are ${numOkMovies} ok movies.`);
console.log(`There are ${numBadMovies} bad movies.`);
console.log(`The average movie rating is ${avg}.`);
console.log("---------");


// FUNCTIONS ***********************************************
// *********************************************************
function doMovieWork(movieScores) {
  // Array of movie ratings
var movieScores = [
  4.4,
  3.3,
  5.9,
  8.8,
  1.2,
  5.2,
  7.4,
  7.5,
  7.2,
  9.7,
  4.2,
  6.9
];

// Starting a rating count
var sum = 0;

// Arrays to hold movie scores
var goodMovieScores = [];
var okMovieScores = [];
var badMovieScores = [];

console.log(movieScores);

for (let i = 0; i < movieScores.length; i++){
  var score = movieScores[i];
  sum += score;

  if (score > 7){
    goodMovieScores.push(score);
  } else if ((score >= 5) && (score <= 7)) {
    okMovieScores.push(score);
  } else {
    badMovieScores.push(score);
  }
}

console.log(goodMovieScores);
console.log(okMovieScores);
console.log(badMovieScores);

// var sum = movieScores.reduce((partialSum, a) => partialSum + a, 0);

var avg = sum / movieScores.length;

// Store the length of movie ratings
var numGoodMovies = goodMovieScores.length;
var numOkMovies = okMovieScores.length;
var numBadMovies = badMovieScores.length;

// Print results
console.log("---------");
console.log(`There are ${numGoodMovies} good movies.`);
console.log(`There are ${numOkMovies} ok movies.`);
console.log(`There are ${numBadMovies} bad movies.`);
console.log(`The average movie rating is ${avg}.`);
console.log("---------");
}