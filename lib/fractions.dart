import 'package:DartMath/dart_math.dart';

class Fraction extends DartMath {
  double _nominator;
  double _denominator;

  Fraction(double _nominaotor, double _denominator) {
    this._nominator = _nominaotor;
    this._denominator = _denominator;
  }

  double nominator() {
    return this._nominator;
  }

  double commonfactor(Fraction secfrac) {
    return this._denominator * secfrac._denominator;
  }

  double denominator() {
    return this._denominator;
  }

  int quotient() {
    return (this._nominator ~/ this._denominator);
  }

  double remainder() {
    return (this._nominator % this._denominator);
  }

  Fraction fracAdd(Fraction secfrac) {
    double lcm = this._denominator * secfrac._denominator;
    double f1 = lcm / this._denominator;
    double f2 = lcm / secfrac._denominator;
    double t = f1 * this._nominator;
    double t1 = f2 * secfrac._nominator;
    double sum = t + t1;
    Fraction fraction = new Fraction(sum, lcm);
    return fraction;
  }

  Fraction fracSub(Fraction secfrac) {
    double lcm = this._denominator * secfrac._denominator;
    double f1 = lcm / this._denominator;
    double f2 = lcm / secfrac._denominator;
    double t = f1 * this._nominator;
    double t1 = f2 * secfrac._nominator;
    double diff = t - t1;
    Fraction fraction = new Fraction(diff, lcm);
    return fraction;
  }

  Fraction fracMul(Fraction secfrac) {
    Fraction fraction = new Fraction(this._nominator * secfrac._nominator,
        this._denominator * secfrac._denominator);
    return fraction;
  }
  Fraction fracDiv(Fraction secfrac) {
    Fraction fraction = new Fraction(this._nominator * secfrac._denominator,
        this._denominator * secfrac._nominator);
    return fraction;
  }
}
