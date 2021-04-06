import 'person.dart';

class Student extends Person {
  // gunanya super(param1, param2) adalah membuat nilai baru yang dimana pada parentnya di wajibkan di isi namun di child bisa di buat sendiri seperti ini
  Student({String studentName = 'student baru'}) : super(name: studentName) {
    print('constructor Student');
  }
}
