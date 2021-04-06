import 'user.dart';

class Services {
  Future<User> getuserData() async {
    return User();
  }
}

// cara penggunaan singleton
class ServicesSingleton {
  static final ServicesSingleton _instace = ServicesSingleton._internal();

  ServicesSingleton._internal();

  factory ServicesSingleton() {
    return _instace;
  }

  Future<User> getuserData() async {
    return User();
  }
}
