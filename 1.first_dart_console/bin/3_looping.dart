import 'dart:io';

void main(List<String> arguments) {
  for(var angka = 0; angka <= 5; angka++) {
    print('ini angka ke ' + angka.toString());
  }

  print('==============');

  var i = 0;
  while(i < 5) {
  print('hallo ke ' + i.toString());
  i += 1;
  }

  print('==============');

  var x = 0;
  do {
    print('do ' + x.toString());
    x++;
  } while(x < 5);
}
