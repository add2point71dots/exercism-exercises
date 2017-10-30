var GigaSecond = function(start) {
  this.startDate = start;
};

GigaSecond.prototype.date = function() {
  var totalMilliseconds = this.startDate.getTime() + Math.pow(10,12);
  return new Date(totalMilliseconds);
};

module.exports = GigaSecond;
