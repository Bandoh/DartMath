import 'package:dart_math/cordinates.dart';
import 'package:dart_math/dart_math.dart';

class CordinateGeometry {
  //point field
  Map<String, double> _point2;
  Map<String, double> _point1;

//constructor for cordinate functions
  CordinateGeometry.withcordinate(Cordinates point1, Cordinates point2) {
    this._point1 = point1.getcordinates();
    this._point2 = point2.getcordinates();
  }
}
