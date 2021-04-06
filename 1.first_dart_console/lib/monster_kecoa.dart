import 'package:first_dart_console/monster.dart';
import 'package:first_dart_console/interface_flying_monster.dart';

class MonsterKecoa extends Monster implements FlyingMonster {

  //penggunaan override disini jadi wajib karena method fly() pada interface (implements FlyingMonster)
  // tidak memiliki nilai default atau di sebut menimpah fly() dari interface FlyingMonster
  @override
  String fly() => 'syunggg....';

  // penggunaan override disini untuk mengganti nilai default dari eatHuman pada class Monster
  @override
  String eatHuman() {
    return 'crit critt nyumm arghh';
  }

  // penggunaan override disini jadi wajib karena method move() pada parentnya (class Monster)
  // tidak memiliki nilai default atau di sebut menimpah method move dari parent (class Monster)
  @override
  String move() {
    return 'terbang terbang sana sini';
  }

}