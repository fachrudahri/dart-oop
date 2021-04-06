import 'package:first_dart_console/character.dart';

//TODO class Monster mengambil turunan dari character dengan menggunakan extends
//TODO Menggunakan abstract agar tidak dapat di panggil begitu saja
abstract class Monster extends Character{
  //method
  String eatHuman() => 'Grr.. Delicios.. Yummy';

  //ketika menambahkan method move() maka tiap turunannya harus mengoverride method move pada turunannya
  //karena method ini belum di implementasi hanya cuma method kosong
  String move();
}