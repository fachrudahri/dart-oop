import 'dart:io';
//TODO stdin.readLineSync() ==> untuk input di console (jgn lupa import dart:io)
//TODO int.tryParse() ==> untuk int
//TODO double.tryParse() ==> untuk double

void main(List<String> arguments) {
  print('silahkan masukkan angka :');
  var input = stdin.readLineSync();
  var number = int.tryParse(input);
  print(number);
}
