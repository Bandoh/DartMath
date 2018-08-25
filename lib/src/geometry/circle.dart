part of geometry;

class Circle {
  Cordinates _center;
  Cordinates _circleEdge;
  double _radius;

  Circle(Cordinates center, Cordinates circleEdge, double radius) {
    this._center = center;
    this._circleEdge = circleEdge;
    this._radius = radius;
  }

  double radius() {
    return this._circleEdge.getdistance(this._center);
  }

  List<Cordinates> lineIntersection(Line l) {
    double xSquare = (pow(l._m, 2) + 1);
    double x = -2 * (this._center._x) + 2 * (l._m * (l._c - this._center._y));
    double constants = ((pow((l._c - this._center._y), 2)) +
        (pow(this._center._x, 2)) -
        (this._radius));
    Quadratic q = new Quadratic(xSquare, x, constants);
    List<Cordinates> cordinates = [];
    for (int i = 0; i < q.roots().length; i++) {
      cordinates.add(new Cordinates(x: q.roots()[i]));
      cordinates[i]._y = cordinates[i].getY(l)._y;
    }
    return cordinates;
  }
}
