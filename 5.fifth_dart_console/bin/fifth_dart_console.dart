void main(List<String> arguments) async {
  var p = Person();

  //pakai then agar printah di bawah seperti 'job 4' tidak perlu mununggu getDataAsync untuk dijalankan
  print('job 1');
  print('job 2');
  p.getDataAsync().then((_) => {print('job 3 ' + p.name)});
  print('job 4');

  //jika pakai await, cukup pindahkan 'job 4' ke atas await
  // print('job 1');
  // print('job 2');
  // print('job 4');
  // await p.getDataAsync();
  // print('job 3 ' + p.name);
}

class Person {
  String name = 'default name';

  void getData() {
    name = 'joko';
    print('get data [DONE]');
  }

  //method async adalah method yang ga akan di tungguin
  //Future maksudnya adalah untuk menunjukkan getDataAsync hasilnya engga akan langsung kembali jadi engga akan langsung return, bisa nunggu berapa detik(waktu) dulu
  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    name = 'joko';
    print('get data [DONE]');
  }
}
