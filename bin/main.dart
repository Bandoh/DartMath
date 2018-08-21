import 'package:DartMath/CordinateGeometry.dart';
import 'package:DartMath/DartMath.dart' as DartMath;

main(List<String> arguments) {
  Cordinates p1 = new Cordinates(1.0,1.0);
  Cordinates p2 = new Cordinates(2.0,3.0);
  CordinateGeometry cordinateGeometry = new CordinateGeometry();
  print('This is distance ${cordinateGeometry.getdistance(p1, p2)}');
  print('This is Slope ${cordinateGeometry.getslope(p1, p2)}');
  print('This is radius ${cordinateGeometry.getradius(p1, p2)}');
   print('This is y intercept ${cordinateGeometry.getyintercept(p1, p2)}');
}
