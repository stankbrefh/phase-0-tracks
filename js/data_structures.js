// RELEASE 0
var colors = ["blue", "magenta", "turquoise", "brown"]
var names = ["Quiggly", "Chuck", "Brett", "Janice"]

console.log(colors.push("red"));
console.log(names.push("Joe"));

// RELEASE 1
var horse = {};
for (var i = 0; i < names.length; i++){
    horse[names[i]] = colors[i];
}

console.log(horse);


// RELEASE 2
function Car(color, make) {
  this.color = color;
  this.make = make;
  this.talk = function() {console.log("HONK!");};
}

var newCar1 = new Car("red", "Chevy");
newCar1.talk();
console.log("That's a nice "+newCar1.color+" "+newCar1.make+" you have there!");

var newCar2 = new Car("blue", "Kia");
newCar2.talk();
console.log("That's a nice "+newCar2.color+" "+newCar2.make+" you have there!");

var newCar3 = new Car("green", "Honda");
newCar3.talk();
console.log("That's a nice "+newCar3.color+" "+newCar3.make+" you have there!");