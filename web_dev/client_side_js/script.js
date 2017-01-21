var blue = [196, 77, 55];
var word = "JavaScript";

drawName(word, blue);
bounceBubbles();

document.getElementById("myBtn").addEventListener("click", function(){
    document.getElementById("demo").innerHTML = "Hello World";
});