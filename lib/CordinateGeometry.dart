import 'package:DartMath/DartMath.dart';
import 'dart:math';

class CordinateGeometry extends DartMath {
  var _x1;
  var _y1;
  var _x2;
  var _y2;

  CordinateGeometry(var _x1, var _y1, var _x2, var _y2) {
    this._x1 = _x1;
    this._y1 = _y1;
    this._x2 = _x2;
    this._y2 = _y2;
  }

  //Setters
  void setpointA(double _x1, double _y1) {
    this._x1 = _x1;
    this._y1 = _y1;
  }

  void setpointB(double _x2, double _y2) {
    this._x2 = _x2;
    this._y2 = _y2;
  }

  //Slope of a line
  double getslope() {
    return ((_y2 - _y1) / (_x2 - _x1));
  }

  //Distance between 2 points
  double getdistance() {
    double x = (this._x2 - this._x1) * (this._x2 - this._x1);
    double y = (this._y2 - this._y1) * (this._y2 - this._y1);
    double sum = x + y;
    return sqrt(sum);
  }
}
