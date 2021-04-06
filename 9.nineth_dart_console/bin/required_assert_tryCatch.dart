import 'package:meta/meta.dart';

void main(List<String> arguments) {
  Person p;

  // 3.cara penggunaan try catch
  try {
    p = Person(name: null);
  } catch (e) {
    print(e);
  }

  print('hello');
}

class Person {
  final String name;
  final int age;

  // 1.cara penggunaan required dengan menambahkan @required
  Person({@required this.name, this.age = 0}) {
    // 2.cara penggunaan assert sebagai pembuat validasi error ketika ada kesalahan
    assert(name != null, "Yout must give the person's name");
  }
}
