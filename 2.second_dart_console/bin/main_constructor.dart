// import 'dart:io';

import 'person.dart';
import 'student.dart';

void main(List<String> arguments) {
  // var input = stdin.readLineSync();

  // penggunaan default constructor
  Person s = Student();

  /* kenapa class Student dengan parameter kosong berisi nilai costructor Person dimana class Person adalah parent dari Student maka dari itu constructor itu dipanggil dari paling atas(parent) baru ke bawah bawahnya */
  print(s.name);
}
