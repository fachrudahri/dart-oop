//TODO class Character dapat menurunkan fungsi funsinya pada class lainnya
class Character {
  //identifier
  int _healthPoint;

  //get property
  int get healthPoint => _healthPoint;

  //set property
  set healthPoint(int value) {
    if(value < 0) {
      value *= -1;
    }
    _healthPoint = value;
  }

}