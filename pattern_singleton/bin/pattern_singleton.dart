import 'services.dart';
import 'user.dart';

//todo gunanya pattern singleton adalah ketika kita hanya butuh satu object dan tidak ingin membuat object yang sama dan menjadikan boros memory

/*
Ketika kita merancang sebuah sistem, adakalanya kita hanya perlu 1 buah objek yang digunakan di berbagai tempat. Dengan menggunakan design pattern singleton, kita dapat memastikan bahwa sebuah class hanya dapat dibuat 1 buah objek saja sehingga kita dapat menghemat penggunaan memori. Video ini akan menjelaskan bagaimana kita menerapkan design pattern Singleton dalam bahasa Dart.
*/
void main(List<String> arguments) async {
  ServicesSingleton services1 = ServicesSingleton();
  ServicesSingleton services2 = ServicesSingleton();
  User user = await services1.getuserData();

  if (services1 == services2) {
    print('sama');
  } else {
    print('beda');
  }
}
