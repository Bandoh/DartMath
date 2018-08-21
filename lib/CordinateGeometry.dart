import 'package:DartMath/Cordinates.dart';
import 'package:DartMath/DartMath.dart';
import 'dart:math';
import 'package:DartMath/Lines.dart';

class CordinateGeometry extends DartMath {
  //point field
  Map<String, double> _point2;
  Map<String, double> _point1;

  //line field
  Map<String, double> _line1;
  Map<String, double> _line2;

//constructor for cordinate functions
  CordinateGeometry.withcordinate(Cordinates point1, Cordinates point2) {
    this._point1 = point1.getcordinates();
    this._point2 = point2.getcordinates();
  }
//contructor for line functions
  CordinateGeometry.withlines(Line line1, Line line2) {
    this._line1 = line1.getLineEqn();
    this._line2 = line2.getLineEqn();
  }

  //Slope of a Straight line
  double getslope(Cordinates point1, Cordinates point2) {
    return ((this._point2['y'] - this._point1['y']) / (this._point2['x'] - this._point1['x']));
  }

//Returns Cordinates if they intersect else returns null
  Cordinates intersection(Line line1, Line line2) {
    try {
      double top = this._line2['intercept'] - this._line1['intercept'];
      double bottom = this._line2['gradient'] - this._line1['gradient'];
      double x = top / bottom;
      double y;
      y = (this._line1['gradient'] * x) + (this._line1['intercept']);
      Cordinates cordinate = new Cordinates(x, y);
      return cordinate;
    } catch (e) {
      return null;
    }
  }

  //returns Distance between 2 points
  double getdistance(Cordinates point1, Cordinates point2) {
    double x = pow((this._point2['x'] - this._point1['x']), 2);
    double y = pow((this._point2['y'] - this._point1['y']), 2);
    double sum = x + y;
    return sqrt(sum);
  }

//Gets radius of 2 cordinates
  double getradius(Cordinates point1, Cordinates point2) {
    return getdistance(point1, point2);
  }

//Gets Y-intercept from points
  double getyintercept(Cordinates point1, Cordinates point2) {
    return (this._point1['y']) - ((getslope(point1, point2)) * this._point1['x']);
  }
}
