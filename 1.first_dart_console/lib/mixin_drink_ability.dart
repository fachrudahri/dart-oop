import 'package:first_dart_console/hero.dart';

// membuat mixin hanya bisa di gunakan oleh turunan dari class Hero
mixin DrinkAbilityMixin on Hero {
  String drink() => 'glukk.. glukk.. glukk';
}