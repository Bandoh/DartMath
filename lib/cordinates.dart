//Cordinate Class to handle all cordinates
class Cordinates {
  double _x;
  double _y;
  Cordinates(double x, double y) {
    this._x = x;
    this._y = y;
  }

  //gets cordinates into an array
  Map<String, double> getcordinates() {
    final Map<String, double> cordinates = {'x': this._x, 'y': this._y};
    return cordinates;
  }
}
