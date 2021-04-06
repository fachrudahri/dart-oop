import 'package:third_dart_console/third_dart_console.dart';

void main(List<String> arguments) {
  var p = Person('Fachru', doingHobby: (_) {
    print('basket in the gor samudra');
  });

  p.takeARest();
}

// cara ribet membuat method diluarnya
// void davidsHobby(String name) {
//   print('$name is basket');
// }
