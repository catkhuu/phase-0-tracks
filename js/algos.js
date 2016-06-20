// input: array of strings
// output: longest string
// take given arrayOfStrings and use sort function on Array. arrayOfStrings will be sorted from descending order, with the longest string as index = 0.  Store sorted array in variable sorted.
// print sorted[0] with console.log. Should return the longest string in the given array.

function longestStr(arrayOfStrings) {
var sorted = arrayOfStrings.sort(function (a, b) { return b.length - a.length });

console.log(sorted[0]);
}