var DnaTranscriber = function(input){};

DnaTranscriber.prototype.toRna = function(dna) {
  var rna = "";
  for (var i = 0; i < dna.length; i++) {
    if (dna[i] == "G") {
      rna += "C";
    } else if (dna[i] == "C") {
      rna += "G";
    } else if (dna[i] == "T") {
      rna += "A";
    } else if (dna[i] == "A") {
      rna += "U";
    } else {
      throw Error('Invalid input');
    }
  }
  return rna;
};

module.exports = DnaTranscriber;
