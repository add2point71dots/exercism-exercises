var Luhn = function(str) {
  this.valid = isValid(str);
};

var isValid = function(str) {
  var stripStr = str.replace(/\s/g, '');
  if (stripStr.length <= 1 || isNaN(stripStr)) {
    return false;
  }

  var sum = 0;
  for (var i = 0; i < stripStr.length; i++) {
    if ((i - stripStr.length) % 2 === 0) {
      var doubled = stripStr[i] * 2;
      if (doubled > 9) {
        doubled -= 9;
      }
      sum += (doubled * 1);
    } else {
      sum += (stripStr[i] * 1);
    }
  }
  return (sum % 10 === 0) ? true : false;
};

module.exports = Luhn;
