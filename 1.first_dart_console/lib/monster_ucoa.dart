import 'package:first_dart_console/interface_flying_monster.dart';
import 'package:first_dart_console/mixin_drink_ability.dart';
import 'package:first_dart_console/mixin_toxic_skill.dart';
import 'package:first_dart_console/monster_ubur.dart';

// extends untuk mengambil parentnya
// with untuk mengambil mixin
// implements mengambil interface
class MonsterUcoa extends MonsterUbur with ToxicSkill implements FlyingMonster {
  @override
  String fly() {
    return 'terbang terbang melayang';
  }

  @override
  String swim() {
    return super.swim();
  }
}