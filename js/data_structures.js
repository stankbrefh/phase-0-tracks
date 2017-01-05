var colors = ["blue", "magenta", "turquoise", "brown"]
var names = ["Quiggly", "Chuck", "Brett", "Janice"]

console.log(colors.push("red"));
console.log(names.push("Joe"));

var horse = {};

for (var i = 0; i < names.length; i++){
    horse[names[i]] = colors[i];
}

console.log(horse);

function Car(color, make) {
  console.log("Our car is a:", this);
  this.color = color;
  this.make = make;
  this.talk = function() { console.log("HONK!"); }
};

var newCar1 = new Car("red", "Chevy");
newCar1.talk();
console.log(newCar1.make);

var newCar2 = new Car("blue", "Kia");
newCar2.talk();
console.log(newCar2.make);

var newCar3 = new Car("green", "Honda");
newCar3.talk();
console.log(newCar3.make);