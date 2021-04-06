/*
1. const bisa gunakan pada toplevel (paling atas code seperti di komen ini)  dan bisa di pakai di mana saja.
2. const tidak bisa di gunakan pada field tanpa static field
3. const hanya bisa di gunakan local variabel atau static field (class)
*/

/*
1. final harus di inisialisasi ketika berapa di main dan jika sudah di inisialisasi tidak bisa di inisialiasasi ulang (mirip const di js)
2. final bisa tanpa inisialisasi melalui constructor jika final adalah sebual field (class)
*/

void main(List<String> arguments) {
  var a = constClass(number: 2);
  var b = constClass(number: 2);
  // return false karena menunjukkan pada objek yang berberda
  print(identical(a, b));

  var x = const constClass(number: 2);
  var y = const constClass(number: 2);
  //return true karena menunjukkan pada object yang sama dengan menggunakan const
  print(identical(x, y));
}

class regularClass {
  final int number;

  //error karena const bisanya di static fields
  // const int numberConst = 12;

  //on static fields
  // static const numberConst = 12;

  regularClass({this.number});
}

class constClass {
  final int number;

  const constClass({this.number});
}
