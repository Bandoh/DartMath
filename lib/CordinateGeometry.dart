import 'package:DartMath/DartMath.dart';
import 'dart:math';

class Cordinates {
  double _x;
  double _y;
  Cordinates(double x, double y) {
    this._x = x;
    this._y = y;
  }
}

class CordinateGeometry extends DartMath {
  var _x1;
  var _y1;
  var _x2;
  var _y2;

  CordinateGeometry();

  //Slope of a Straight line
  double getslope(Cordinates a, Cordinates b) {
    return ((b._y - a._y) / (b._x - a._x));
  }

  //Distance between 2 points
  double getdistance(Cordinates a, Cordinates b) {
    double x = (b._x - a._x) * (b._x - a._x);
    double y = (b._y - a._y) * (b._y - a._y);
    double sum = x + y;
    return sqrt(sum);
  }
}
