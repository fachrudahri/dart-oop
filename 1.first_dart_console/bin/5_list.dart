import 'dart:io';

void main(List<String> arguments) {
  var zeroList = <String>[];
  //TODO menambahkan satu item ke list
  zeroList.add('nanas');
  //TODO menambahkan lebih dari satu item ke list
  zeroList.addAll(['apel', 'pisang']);
  //TODO menyisipkan item ke index tertentu dalam list
  zeroList.insert(1, 'jeruk');
  //TODO meyisipkan item ke index tertentu dalam jumlah lebih dari satu item ke dalam list
  zeroList.insertAll(3, ['lemon', 'anggur']);
  //TODO menghapus item sesuai namanya
  zeroList.remove('jeruk');
  //TODO menghapus item sesuai indexnya
  zeroList.removeAt(3);
  //TODO menghapus item di index terakhir
  zeroList.removeLast();
  //TODO menghapus item berdasarkan jarak atau range (mulai dari awal di hapus sampai sebelum index terakhir)
  zeroList.removeRange(0, 2);

  zeroList.forEach((element) {
    print(element);
  });
  print('------------------');

  // ---------------------------------------------------------------------

  var newList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];
  //TODO menghapus berdasarkan dimana(where) jika true maka item akan di delete
  newList.removeWhere((int num) => num % 2 != 0);

  //TODO contains berguna untuk memeriksa apakah dia mengandung element tersebut
  if(newList.contains(2)) {
    print('benar!');
  }

  newList.forEach((element) {
    print(element);
  });
  print('------------------');

  // ---------------------------------------------------------------------

  var testList = <int>[20, 50, 12, 51];
  var exampleList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];
  //TODO mengambil item testList dari index ke berapa sampai berapa (start, end), lalu di replace ke exampleList
   exampleList = testList.sublist(1, 3);
  //TODO clear list
  // testlist.clear();
  //TODO sort list default
  // testList.sort();
  //TODO sort list by order
  // testList.sort((a,b) => b - a);
  testList.sort((a,b) => a - b);

  testList.forEach((element) {
    print(element);
  });
  print('------------------');

   exampleList.forEach((element) {
     print(element);
   });
  print('------------------');

  // ---------------------------------------------------------------------

  var myList = <String>['fachru', 'cindy', 'mama', 'papa'];
  //TODO loop list with for in
  for(var res in myList) {
    print(res);
  }
  print('------------------');
  //TODO loop list with forEach
  myList.forEach((el) {
    print(el);
  });
  print('------------------');

  // ---------------------------------------------------------------------

  var mapList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];
  var resultList = <String>[];
  //TODO penggunaan map dimana tidak mengembalikan nilai baru yang dapat di ubah nilai barunya
  resultList = mapList.map((e) => 'angka ke ' + e.toString()).toList();
  print(resultList);
  resultList.forEach((element) {
    print(element);
  });

}