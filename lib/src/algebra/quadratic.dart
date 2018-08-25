part of algebra;

class Quadratic {
  double _a;
  double _b;
  double _c;
  double _disc;
  Quadratic(double a, double b, double c) {
    this._a = a;
    this._b = b;
    this._c = c;
  }

  double discriminant() {
    double d = pow((this._b), 2) - 4 * (this._a * this._c);
    return d;
  }

  List<double> roots() {
    List<double> roots = [];
    double disc = sqrt(this.discriminant());
    double pos = (-this._b + disc) / (2 * this._a);
    print(pos);
    double neg = (-this._b - disc) / (2 * this._a);
    roots.add(pos);
    roots.add(neg);
    return roots;
  }
}
