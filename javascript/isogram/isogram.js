var Isogram = function(input) {
  this.word = input;
};

Isogram.prototype.isIsogram = function() {
  var visitedLetters = {};
  var word = this.word.toLowerCase();

  for (var i = 0; i < word.length; i++) {
    var ch = word[i];

    if (visitedLetters[ch]) {
      return false;
    } else if (ch != ch.toUpperCase()) {
      visitedLetters[ch] = true;
    }
  }
  return true;
};


module.exports = Isogram;
