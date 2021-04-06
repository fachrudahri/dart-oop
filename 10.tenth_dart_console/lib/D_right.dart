//? RIGHT

// (CORE)
class User {
  // User related things
}

// high level module
class UserManager {
  final IDataStorage datastorage;

  UserManager(this.datastorage);

  void saveUserData(User user) {
    datastorage.saveData(user);
  }
}

// kontrak dengan membuat interface (CORE)
abstract class IDataStorage {
  void saveData(User user);
}

// low level module
class FirebaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // connect to firebase
    // save data
  }
}

// low level module
class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // connect to firebase
    // save data
  }
}
