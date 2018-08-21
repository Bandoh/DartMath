import 'package:DartMath/cordinates.dart';
import 'package:DartMath/fractions.dart';
import 'package:DartMath/lines.dart';

main(List<String> arguments) {
  //Intantiate a Fraction Object
  Fraction fractions = new Fraction(3.0, 2.0);
  Fraction fractions1 = new Fraction(5.0, 4.0);
  Fraction fractions2 = new Fraction(5.0, 2.0);
  Fraction sumfrac = fractions.fracAdd(fractions1).fracAdd(fractions2);

//get nominator,denominator, quotient,remainder;
  print(
      'Nominator: ${sumfrac.nominator()} Denominator ${sumfrac.denominator()}');
  print('This is quotient ${sumfrac.quotient()}');
  print('This is remainder ${sumfrac.remainder()}');

  // //Intantiate Line Object
  Line l1 = new Line(y: 1.0, gradient: 2.0, intercept: 3.0);
  Line l2 = new Line(y: 1.0, gradient: -0.5, intercept: 7.0);
  Line l3 = new Line(y: 1.0, gradient: 2.0, x: 1.0);

//Intanciate Cordinates Object
  Cordinates p1 = new Cordinates(1.0, 1.0);
  Cordinates p2 = new Cordinates(2.0, 3.0);

  print('This is distance ${p1.getdistance(p2)}');
  print('This is Slope ${p1.getslope(p2)}');
  print('This is y intercept ${l3.getyintercept()}');

  Cordinates inter;
  Map<String, double> cord;
  //get intersection of two lines
  inter = l1.intersection(l2);
  print(l1.intersection(l2).toLine(p1).intersection(l3));
  cord = inter.getcordinates();
  print('These Lines intersect at $cord');
}
