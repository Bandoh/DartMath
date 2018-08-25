//Creating Class for equation of line

part of geometry;

class Line {
  double _y;
  double _m;
  double _x;
  double _c;
  Line({double y, double gradient, double intercept, double x}) {
    this._y = y;
    this._m = gradient;
    this._x = x;
    this._c = intercept;
  }

  Map<String, double> getLineEqn() {
    final Map<String, double> eqn = {
      'y': this._y,
      'gradient': this._m,
      'x': this._x,
      'intercept': this._c
    };
    return eqn;
  }

  //Returns Cordinates if they intersect else returns null
  Cordinates intersection(Line line1) {
    try {
      double top = line1._c - this._c;
      double bottom = line1._m - this._m;
      double x = top / bottom;
      double y;
      y = (this._m * x) + (this._c);
      Cordinates cordinate = new Cordinates(x, y);
      return cordinate;
    } catch (e) {
      return null;
    }
  }

  //Gets Y-intercept from points
  double getyintercept() {
    this._c = this._y - (this._m * this._x);
    return this._c;
  }
}
