import 'package:DartMath/DartMath.dart';

class Fractions extends DartMath {
  int _nominator;
  int _denominator;

  Fractions(int _nominaotor, int _denominator){
    this._nominator = _nominaotor;
    this._denominator = _denominator;
  }
  int getquotient() {
    int c = (_nominator / _denominator).truncate();
    return c;
  }

  int getremainder(){
    return (_nominator%_denominator);
  }
}
