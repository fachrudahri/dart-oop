//TODO cara menggunakan getter dan setter
//TODO cara menggunakan get property dan set property dart
class jajarGenjang {
  double _alas; // private yang berarti tidak bisa di akses diluar file
  double _tinggi;

  //TODO CARA PENGGUNAAN SETTER
  //menggunakan setter agar private bisa di gunakan di public
  void setAlas(double value) {
    if(value < 0) {
      value *= -1;
    }
    _alas = value;
  }
  //TODO CARA PENGGUNAAN SET PROPERTY
  set tinggi(double value) {
    if(value < 0) {
      value *= -1;
    }
    _tinggi = value;
  }

  //TODO CARA PENGGUNAAN GETTER
  //menggunakan getter agar mendapatkan nilai dari si alas secara public
  double getAlas() {
    return _alas;
  }
  //TODO CARA PENGGUNAAN GET PROPERTY
  double get tinggi {
    return _tinggi;
  }

  //penggunaan method disini kurang tepat karena jajar genjang tidak dapat menghitung
  double hitungLuas() {
    return _alas * _tinggi;
  }

  //cara yang tepat adalah dengan seperti ini, dikarenakan jajar genjang memiliki luas
  double get luas => _alas * _tinggi;
}