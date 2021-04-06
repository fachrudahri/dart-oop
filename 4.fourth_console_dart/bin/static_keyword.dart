import 'package:fourth_console_dart/fourth_console_dart.dart';

void main(List<String> arguments) {
  var p = Person('Fachru', 110);

  print(p.age);

  //cara mengakses static keyword si class dengan seperti ini
  print(Person.maxAge);
}
