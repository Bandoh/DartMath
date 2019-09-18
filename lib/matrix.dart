library matrix;

part 'src/matrix/matrix.dart';


main(List<String> args) {
  List<int> la = [2,3,4,6,4,1,2];
  Matrix matrix = Matrix(la);
  matrix.det();
}
