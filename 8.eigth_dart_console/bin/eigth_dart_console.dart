void main(List<String> arguments) {
  // tanpa cascade notation
  // MonsterUcoa m = MonsterUcoa(status: UcoaStatus.confused);
  // m.move();
  // m.eat();

  // cara menggunakan cascade notation
  // MonsterUcoa m = MonsterUcoa(status: UcoaStatus.confused)
  //   ..move()
  //   ..eat();

  // cara menggunakan cascade notation jika ada pemotongan di tengah jalan
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.confused);
  print('memotong cascade notation');

  m
    ..move()
    ..eat();
}

//cara menggunakan enum agar tidak bingung saat memilih sebuah status pada pilihan
enum UcoaStatus { normal, poisoned, confused }

class MonsterUcoa {
  final UcoaStatus status; // 1.normal, 2.poisoned, 3. confused

  //constructor
  MonsterUcoa({this.status = UcoaStatus.normal});

  void move() {
    switch (status) {
      case UcoaStatus.normal:
        print('Ucoa is Moving');
        break;
      case UcoaStatus.poisoned:
        print('Ucoa cannot move. Ucoa is dying. Ucoa need help.');
        break;
      case UcoaStatus.confused:
        print('Ucoa cannot move. Ucoa is dying. Ucoa need help.');
        break;
      default:
        print('none');
    }
  }

  void eat() {
    print('Ucoa is eating indomie.');
  }
}
