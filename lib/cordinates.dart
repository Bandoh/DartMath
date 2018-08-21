//Cordinate Class to handle all cordinates

import 'dart:math';
import 'package:DartMath/gradient.dart';
import 'package:DartMath/lines.dart';

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

  //Slope of a Straight line
  Gradient getslope(Cordinates point1 ) {
    Gradient gradient;
    gradient = new Gradient((point1._y-this._y)/(this._x-this._x));
    return gradient;
  }


  //returns Distance between 2 points
  double getdistance(Cordinates point1) {
    double x = pow((point1._x - this._x), 2);
    double y = pow((point1._y - this._y), 2);
    double sum = x + y;
    return sqrt(sum);
  }
  Line toLine(Cordinates pointa){
    Line line ;
    Gradient gradient = new Gradient(this.getslope(pointa).getGradient());
    line = new Line(x:pointa._x,gradient: gradient.getGradient(),y: pointa._y);
    return line;
  }
}
