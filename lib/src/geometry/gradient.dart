part of geometry;

class Gradient {
  double _gradient;
  Gradient(double gradient) {
    this._gradient = gradient;
  }

  double getGradient() {
    return this._gradient;
  }

  bool isParallel(Gradient m) {
    if (this._gradient == m._gradient) {
      return true;
    } else {
      return false;
    }
  }

  bool isPerpendicular(Gradient m) {
    if (this._gradient == -(pow(m._gradient, -1))) {
      return true;
    } else {
      return false;
    }
  }
}
