import 'package:DartMath/CordinateGeometry.dart';
import 'package:DartMath/DartMath.dart' as DartMath;

main(List<String> arguments) {
  Cordinates p1 = new Cordinates(10.0,5.0);
  Cordinates p2 = new Cordinates(5.0,2.0);
  CordinateGeometry cordinateGeometry = new CordinateGeometry();
  print(cordinateGeometry.getdistance(p1, p2));
  print(cordinateGeometry.getslope(p1, p2));
}
