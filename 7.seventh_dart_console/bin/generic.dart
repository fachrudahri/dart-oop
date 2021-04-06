import 'package:seventh_dart_console/int_secureBox.dart';
import 'package:seventh_dart_console/secureBox.dart';
//todo Generic untuk memanggil type class bisa secara global

void main(List<String> arguments) {
  var box = IntSecureBox(100, '123');
  var genericBox1 = SecureBox<String>('data String', '123');
  var genericBox2 = SecureBox<int>(2389283, '123');
  var genericBox3 = SecureBox<DateTime>(DateTime.now(), '123');
  var genericBox4 = SecureBox<Person>(Person('Fachru'), '1223');

  print(box.getData('123'));
  print(genericBox1.getData('123'));
  print(genericBox2.getData('123'));
  print(genericBox3.getData('123'));
  print(genericBox4.getData('1223').name);
}

//contoh ke 2 menggunakan tipe dari class lainnya
class Person {
  final String name;
  Person(this.name);
}
