import 'package:DartMath/DartMath.dart';
import 'dart:math';

//Cordinate Class to handle all cordinates
class Cordinates {
  double _x;
  double _y;
  Cordinates(double x, double y) {
    this._x = x;
    this._y = y;
  }

  //gets cordinates into an array
  List<double> getcordinates() {
    List<double> cordinates = [];
    cordinates.add(this._x);
    cordinates.add(this._y);
    return cordinates;
  }
}

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
}

class CordinateGeometry extends DartMath {
  CordinateGeometry();

  //Slope of a Straight line
  double getslope(Cordinates point1, Cordinates point2) {
    return ((point2._y - point1._y) / (point2._x - point1._x));
  }

//Returns Cordinates if they intersect else returns null
  Cordinates intersection(Line line1, Line line2) {
    try {
      double top = line2._c - line1._c;
      double bottom = line2._m - line1._m;
      double x = top / bottom;
      double y;
      y = (line1._m * x) + (line1._c);
      Cordinates cordinate = new Cordinates(x, y);
      return cordinate;
    } catch (e) {
      return null;
    }
  }

  //returns Distance between 2 points
  double getdistance(Cordinates point1, Cordinates point2) {
    double x = (point2._x - point1._x) * (point2._x - point1._x);
    double y = (point2._y - point1._y) * (point2._y - point1._y);
    double sum = x + y;
    return sqrt(sum);
  }


//Gets radius of 2 cordinates
  double getradius(Cordinates point1, Cordinates point2) {
    return getdistance(point1, point2);
  }


//Gets Y-intercept from points
  double getyintercept(Cordinates point1, Cordinates point2) {
    var slope = getslope(point1, point2);
    return (point1._y) - (slope * point1._x);
  }
}
