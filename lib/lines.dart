//Creating Class for equation of line
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

  Map<String,double> getLineEqn(){
    final Map<String,double> eqn = {
      'y':this._y,
      'gradient':this._m,
      'x': this._x,
      'intercept': this._c
    };
    return eqn;
  }
}