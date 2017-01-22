var blue = [196, 77, 55];
var word = "JavaScript";

drawName(word, blue);
bounceBubbles();

var button = document.getElementById("myBtn")
button.addEventListener("click", function(){
    document.getElementById("demo").innerHTML = "Thanks to Rob Hawkes";
});