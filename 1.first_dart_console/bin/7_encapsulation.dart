import 'package:first_dart_console/jajarGenjang.dart';

/*
encapsulation adalah sebuah pembungkusan data yang ada di dalam class agar tidak dapat di akses
oleh file luar tujuannya supaya si pengguna class kita tidak bingung dengan data yang tidak perlu
dan juga data yang ada di dalam class kita aman untuk di validasi, jadi tidak ada masuk value yang tidak
di perlukan dalam class kita.
* */

void main(List<String> arguments) {
  jajarGenjang jajar1;

  jajar1 = jajarGenjang();
  jajar1.setAlas(2); //cara memanggil setter dari berbeda file
  jajar1.tinggi = -10;

  print(jajar1.getAlas()); // cara memanggil getter dari berbeda file
  print(jajar1.tinggi); // cara memanggil get property dari berbeda file
  print('------------');
  print('menggunakan method pada class');
  print(jajar1.hitungLuas());
  print('------------');
  print('menggunakan get property pada class');
  print(jajar1.luas);
}