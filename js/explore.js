// PSEUDOCODE
// Create a function that takes a string as a parameter.
// Declare a result variable and set it equal to an empty string.
// For each letter, add the current letter to the result.
// Return the result.
// Log the the result to the console. 

function reverse(str) {
  var result = '';
    for (var i = 0; i < str.length; i++) {
      result = str[i] + result;
    }
    return result;
}

// DRIVER CODE
var str = "Hello";
var reversedStr = console.log(reverse(str));
if(str == "Hello") console.log(reverse(str));