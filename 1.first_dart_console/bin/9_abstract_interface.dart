
import 'package:first_dart_console/hero.dart';
import 'package:first_dart_console/monster.dart';
import 'package:first_dart_console/monster_kecoa.dart';
import 'package:first_dart_console/monster_ubur.dart';
import 'package:first_dart_console/interface_flying_monster.dart';
import 'package:first_dart_console/monster_ucoa.dart';

void main(List<String> arguments) async {

  // List<Monster> monsters = []; // old way
  var monsters = <Monster>[];

  // menambahkan monster dari berbagai jenis monsternya yang diturunkan
  // dari parent monster
  monsters.add(MonsterUbur());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterUcoa());

  // contoh penggunaan as, tapi sudah jarang sepertinya
  Monster monster = MonsterKecoa();
  print((monster as MonsterKecoa).fly());

  for(var m in monsters) {
    // cara penggunaan is dalam validasi class
    if(m is MonsterKecoa) {
      print(m.fly() + m.eatHuman());
    }
  }

  print('--------------------');

  for(var m in monsters) {
    print(m.eatHuman());
  }

  print('--------------------');

  // memanggil hasil dari interface
  for(var m in monsters) {
    if(m is FlyingMonster) {
      // cara memanggil yang spesifik pada objectnya menggunakan 'as'
      print((m as FlyingMonster).fly());
    }
  }
}