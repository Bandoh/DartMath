part of matrix;

class Matrix {
  int _row;
  int _column;
  // List <int> _contents;
  Matrix(List content) {
    // this._row = row;
    // this._column = column;
    // this._contents = content;
  }
  det() {
    if (!issquare(this._row, this._column)) {
    } else {
      if (this._column == 2) {
        for (int i = 0; i < this._column; i++) {
          for (int j = 0; j < this._row; j++) {}
        }
      }
      print('doing');
    }
  }
}

bool issquare(int a, int b) {
  if (a == b) {
    return true;
  } else {
    return false;
  }
}