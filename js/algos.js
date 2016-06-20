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

longestStr(["long phrase","longest phrase","longer phrase"]);
longestStr(["to the moon and back", "orlando strong", "once upon a time"]);
longestStr(["bobby", "tom", "maryanne", "lucy the dragon slayer"]);
console.log(match_pair({name: "Steven", age: 54}, {name: "Tamir", age: 54}));//returns true
console.log(match_pair({color: "green", favoriteFood: "pizza", age: "23"}, {allergies: "gluten", HamiltonViewings: 24, hairColor: "red"}));//returns false
match_pair({age:30}, {favoriteNumber: "30"});//returns true
randomString(5);
