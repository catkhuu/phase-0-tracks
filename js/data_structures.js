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

addColor("neon grey");
addHorseName("Chancie");