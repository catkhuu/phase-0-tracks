// declare two arrays. One for colors and the other for horse names.
var colors = ["rainbow", "royal blue", "purple rain", "gold sparkles"];
var horseNames = ["Jack", "Ranger", "Chuck", "Cheerio"];
// add additional color to colors array
function addColor(color) {
colors.push(color);
console.log(colors);
}

// add additional horse name to horseNames array
function addHorseName(name) {
horseNames.push(name);
console.log(horseNames);
}

// loop through colors and horseNames arrays while i is less than colors.length. Pairing of key-values for object(hash) will only work if there are the quantity in each array are equal.
// create new object - var horseId
// set loop
// to add a new item key-value pair to object, it's objectName[key] = value. In this case, we want our key to be horseNames and its value to be colors.
// access horseNames and colors in array by using .slice(begin, end). begin = i, while end = (i+1). To pair 'Ranger' with 'royal blue' it would be horseId[horseNames.slice(1,(1+2))] = colors.slice(1,(1+2));
// print object horseId
// problem with this method is it will return slice for each key-value pair until i = colors.length. It won't just return the final object with all 5 key-value pairs.
function horseDirectory() {
  var horseId = new Object();
  for(var i = 0; i < colors.length; i++) {

  horseId[horseNames.slice(i,(i+1))] = colors.slice(i,(i+1));
  console.log(horseId);
  }
}

// COMMENTED OUT DRIVER CODE
// addColor("neon grey");
// addHorseName("Chancie");
// horseDirectory();

// CONSTRUCTOR FUNCTION - VEHICLE
var vehicle = {model: '500L', manufacturer: 'Fiat', color: 'green', hawaiianDashboardDoll: true };

function Vehicle(model, manufacturer, color, hawaiianDashboardDoll) {
  console.log("Hot off the used car lot:", this);
  //'this' refers to the instance of vehicle that we are making

  //this.model is the Ruby equivalent of @model when creating a Class with instance variables
  this.model = model;
  this.manufacturer = manufacturer;
  this.color = color;
  this.hawaiianDashboardDoll = hawaiianDashboardDoll;

  //function
  this.revEngine = function() { console.log("vroom! vroom!"); };

  console.log("VEHICLE INITIALIZATION COMPLETE!");
}

// CALL 'CLASS'/ CONSTRUCTOR FUNCTION
console.log("Let's get a car ...");
//call constructor function - vehicle
var vehicle1 = new Vehicle("Beetle", "Volkswagon", "yellow", true);
console.log(vehicle1);
console.log("Hear the horsepower on this baby:");
vehicle1.revEngine();
console.log("----");

console.log("You can never have too many cars. Let's get another one...");
var vehicle2 = new Vehicle("Prius", "Toyota", "silve", false);
console.log(vehicle2.model);
console.log("Let's hear the horsepower on this one, too:");
vehicle2.revEngine();
console.log("What a winner this one is. Fast and Furious 12 in the future? I think YES!")
console.log("----")