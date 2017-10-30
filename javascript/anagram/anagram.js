var Anagram = function(word) {
  this.word = word;
};

Anagram.prototype.matches = function() {
  var matches = [];
  var word = this.word.toLowerCase();
  var sortedWord = word.split("").sort().join("");
  var potentialMatches;

  if (typeof(arguments[0]) == "string") {
    potentialMatches = arguments;
  } else {
    potentialMatches = arguments[0];
  }

  for (i = 0; i < potentialMatches.length; i++) {
    var potentialWord = potentialMatches[i].toLowerCase();
    if (potentialWord != word && potentialWord.length == word.length) {
      if (sortedWord == potentialWord.split("").sort().join("")) {
        matches.push(potentialMatches[i]);
      }
    }
  }
  return matches;
};

module.exports = Anagram;
