import 'dart:io';
//TODO pilih salah satu dan comment sisanya pada menu kondisional

void main(List<String> arguments) {
  print('silahkan masukkan angka :');
  var input = stdin.readLineSync();
  var number = int.tryParse(input);

  // conditional biasa
  if(number > 0) {
    print('positif');
  } else if(number < 0) {
    print('negatif');
  } else {
    print('nol');
  }

  // conditional ternary
  String nilai;
  nilai = (number > 0) ? 'positif' : 'nol atau negatif';
  print(nilai);

  // switch case
  switch(number) {
    case 0:
      print('nol');
      break;
    case 1:
      print('satu');
      break;
    case 2:
      print('dua');
      break;
    default:
      print('bilangan lainnya');
  }
}