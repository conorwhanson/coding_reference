// function hello(name) {
//     return 'Hello, ' + name; 
// }

// console.log(hello("TESTING"));

// const minAge = 18;
// let myAge = 17;

// if(myAge >= minAge){
//     console.log("Congrats, you can drive");
// } else {
//     console.log("Sorry youngin. No skrt skrt for you.");
// }

// Shorter for loop
// (myAge >= minAge)? 'Congrats' : 'Sorry nerd';

// FUNCTIONS
// function hello(name) {
//     console.log("Hello " + name);
// }

// hello("Chungus");
const names = ['tim', 'sara', 'georg', 'dorcas'];
const ages = [14, 12, 33, 9];
const minAge = 18;

for (let i = 0; i < names.length; i++){
    let allowed = 'allowed'
    if (ages[i] < minAge){
        allowed = 'not ' + allowed;
    }

    console.log(`${names[i]} (${ages[i]}) is ${allowed} to drive`);
}