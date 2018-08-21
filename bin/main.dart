import 'package:DartMath/cordinate_geometry.dart';
import 'package:DartMath/cordinates.dart';
import 'package:DartMath/fractions.dart';
import 'package:DartMath/lines.dart';

main(List<String> arguments) {
  //Intantiate a Fraction Object
  Fraction fractions = new Fraction(3.0, 2.0);
  Fraction fractions1 = new Fraction(5.0, 4.0);
  Fraction sumfrac = fractions.fracAdd(fractions1);

//get nominator,denominator, quotient,remainder;
  print('Nominator: ${sumfrac.nominator()} Denominator ${sumfrac.denominator()}');
  print('This is quotient ${sumfrac.quotient()}');
  print('This is remainder ${sumfrac.remainder()}');

  // //Intantiate Line Object
  Line l1 = new Line(y: 1.0, gradient: 2.0, intercept: 3.0);
  Line l2 = new Line(y: 1.0, gradient: -0.5, intercept: 7.0);

//Intanciate Cordinates Object
  Cordinates p1 = new Cordinates(1.0, 1.0);
  Cordinates p2 = new Cordinates(2.0, 3.0);

//Contructor for cordinates functions
  CordinateGeometry cordinatepoint =
      new CordinateGeometry.withcordinate(p1, p2);

  //Contructor for Line funtcions
  CordinateGeometry cordinateline = new CordinateGeometry.withlines(l1, l2);
  print('This is distance ${cordinatepoint.getdistance(p1, p2)}');
  print('This is Slope ${cordinatepoint.getslope(p1, p2)}');
  print('This is radius ${cordinatepoint.getradius(p1, p2)}');
  print('This is y intercept ${cordinatepoint.getyintercept(p1, p2)}');

  Cordinates inter;
  Map<String, double> cord;
  inter = cordinateline.intersection(l1, l2);
  cord = inter.getcordinates();
  print('These Lines intersect at $cord');
}
