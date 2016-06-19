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

addColor("neon grey");
addHorseName("Chancie");