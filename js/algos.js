// input: array of strings
// output: longest string
// take given arrayOfStrings and use sort function on Array. arrayOfStrings will be sorted from descending order, with the longest string as index = 0.  Store sorted array in variable sorted.
// print sorted[0] with console.log. Should return the longest string in the given array.

function longestStr(arrayOfStrings) {
var sorted = arrayOfStrings.sort(function (a, b) { return b.length - a.length });

console.log(sorted[0]);
}

// MATCH KEY-VALUE
// input: two objects (e.g. {name: "Steven", age: 54}, {name: "Tamir", age: 54} )
// output: true if there is AT LEAST one key-value pair match between two objects. false is there is no key-value pair match.
// create four empty arrays names keys, values, keys2, and values2.
// push items in object1 into keys array and similarly for items in object2 to keys2 array
// push items in object1 into values array and similarly for items in object2 to values2 array.
// see if items in values array matches any items in values2 array.
// do this by iterating through both arrays, if AT LEAST one item of values[1] -- current item, equals values2[j], then return true.
// Otherwise, return false. If === as opposed to ==, then my driver code would return false with the exception of the first example (Steven and Tamir's age).
function match_pair(object1, object2) {
  var keys = [];
  var values = [];
  var keys2 = [];
  var values2 = [];
for (var x in object1) {
  keys.push(x);
  values.push(object1[x]);
}

for (var y in object2) {
  keys2.push(y);
  values2.push(object2[y]);
}
// values = ["Steve", 54], values2 = ["Tamir", 54]
for (i=0; i < values.length; i++) {
    for (j=0; j < values2.length; j++) {
      if (values[i] == values2[j]) {
        return true;
      }
    }
  }

  return false;

}

// RANDOM STRINGS GENERATOR
// input: number (as integer)
// output: - an array of strings with varying lengths.          - max string length should be number given, while min string length should be 1 (string length >= 1).
//         - the number of items (strings) in the array is equal to the number given.
//         - strings should contain random alpha-charcters (no numerals)
// num = 3, and should generate an array like this:  ['at', 'tD', 'yqx']
// declare an empty array outside of the function to store the results (random strings) that are generated
// declare var result (string). result will contain the random generated string
// declare var alpha = to contain the alphabet (both uppercase and lowercase letters). result will only contain the letters that are contained in alpha.
// i = 0, and while i is less than the given number, generate a random string (result) with characters from alpha. random character in result will increase by one until number given. If given number is 5, then random characters generated from alpha will result in the longest string being 5 (number given) and the shortest string being 1.
// to generate random character (from alpha), establish a range (alpha.length, 0 to 52) that will act as an index to access characters from alpha.
// make sure integer is round and not a float
// each random string of characters that is generated will be stored in var result, where each random generation of a string will be pushed in the array. For example, with a given number of 5, the array might look like this after all 5 random generations of strings. array = ['a', 'ef', 'ZIg', 'lPxi', 'qrRIT']
// print array and return strings stored in result
var array = [];
function randomString(num) {
    var result = ''; // random string generated with given number to specify string length
    var  alpha = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
   // var array = []; -- made var array accessible outside of randomString function by moving it outside of this function. Otherwise, would not have been able to call array values after repeat function for longestStr.
    for (var i = 0; i < num; i++) {
     result += alpha[Math.floor(Math.random() * alpha.length)];
     array.push(result);
    }
    console.log(array);
    return result;
}

// takes number inputted and runs randomString function that number of times.
function repeat(number) {
    for (var i = 0; i < number; i++) {
        randomString(number);
    }
}

// DRIVER CODE

longestStr(["long phrase","longest phrase","longer phrase"]);
longestStr(["to the moon and back", "orlando strong", "once upon a time"]);
longestStr(["bobby", "tom", "maryanne", "lucy the dragon slayer"]);
console.log(match_pair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));//returns true
console.log(match_pair({color: "green", favoriteFood: "pizza", age: "23"}, {allergies: "gluten", HamiltonViewings: 24, hairColor: "red"}));//returns false
match_pair({age:30}, {favoriteNumber: "30"});//returns true
randomString(5);
repeat(10);
longestStr(array);