// RELEASE 0: FIND THE LONGEST PHRASE
// PSEUDOCODE
// Create a function that takes an array of strings as a parameter.
// Set a variable for an empty string.
// Iterate through the array and compare the length of the string to the current longest.
// Replace the longest string if the current string is longer. 
// Return the longest string after all iterations are complete.

function longestPhrase(arr) {
    longest = "";
    for (var i = 0; i < arr.length; i++) {
        if (arr[i].length > longest.length) {
            longest = arr[i];
        }
    }
    return longest;
}

// DRIVER CODE
var arr1 = ["long phrase","longest phrase","longer phrase"];
console.log(longestPhrase(arr1)); // => "longest phrase"
var arr2 = ["a","ab","abc","abcd","abcde","abcd"];
console.log(longestPhrase(arr2)); // => "abcde"
var arr3 = ["lorem ipsum dolor","sit amet","consetetur sadipscing elitr","sed diam nonumy eirmod tempor"];
console.log(longestPhrase(arr3)); // => "sed diam nonumy eirmod tempor"

// RELEASE 1: FIND A KEY-VALUE MATCH
// PSEUDOCODE
// Iterate through the first objects properties and compare them to the second object.
// If any key/value pair matches, return true.
// If there are no matches between the objects key/value pairs, return false.

function keyValueMatch(obj1, obj2) {
    for (var key1 in obj1) {
        for (var key2 in obj2) {
            if (key1 === key2 && obj1[key1] === obj2[key2]) {
                return true;
            }
        }
    }
    return false;
}

// DRIVER CODE
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Yamir", age: 54};
console.log(keyValueMatch(obj1, obj2)); // => true
var obj1 = {name: "Steven", age: 55};
console.log(keyValueMatch(obj1, obj2)); // => false

// RELEASE 2: GENERATE RANDOM TEST DATA
// PSEUDOCODE
// Take in integer (n) and iterate through n times.
// Each loop, determine the random length of the string, 1-10.
// Build a string of that length from random letters in the alphabet.
// Push that string into an array.
// Continue until n-1 iterations are done.
// Return the array of strings.

function randomTestData(n) {
    alphabet = "abcdefghijklmnopqrstuvwxyz";
    result = [];
    for (var i = 0; i < n; i++) {
        var string = "";
        var randomInt = Math.floor((Math.random() * 10) + 1);
        for (var j = 0; j < randomInt; j++) {
            var randomLetter = Math.floor(Math.random() * (alphabet.length));
            string += alphabet[randomLetter];
        }
        result.push(string);
    }
    return result;
}

console.log(randomTestData(10));