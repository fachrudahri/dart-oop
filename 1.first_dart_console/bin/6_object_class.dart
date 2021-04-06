import 'dart:io';

//TODO class itu sebuah rancangan atau denah
//TODO object dari class bisa lebih dari satu seperti contoh di bawah

void main(List<String> arguments) {
  persegiPanjang kotak1, kotak2; // identifier
  double initKotak2;

  segitigaSamaSisi segitiga1;
  double initSegitiga1;

  kotak1 = persegiPanjang();
  kotak1.panjang = 10;
  kotak1.lebar = 51;

  kotak2 = persegiPanjang();
  kotak2.panjang = double.tryParse(stdin.readLineSync());
  kotak2.lebar = double.tryParse(stdin.readLineSync());
  initKotak2 = kotak2.hitungLuas();

  segitiga1 = segitigaSamaSisi();
  segitiga1.alas = 10;
  segitiga1.tinggi = 5;
  initSegitiga1 = segitiga1.hitungLuas();

  print(kotak1.hitungLuas() + initKotak2);
  print(initSegitiga1);
}

class persegiPanjang {
  // fields
  double panjang;
  double lebar;

  // method
  double hitungLuas() {
    return panjang * lebar; // boleh pakai this disini optional
  }
}

class segitigaSamaSisi {
  double alas;
  double tinggi;

  double hitungLuas() {
    return 0.5 * alas * tinggi;
  }
}