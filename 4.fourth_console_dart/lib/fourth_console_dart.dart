//static keyword berguna untuk agar key pada class hanya milik class tersebut, jika tidak menggunakan static maka object yang digunakan dari class dapat mengakses key dari classnya berakibat boros memmory ketika banyak object yang mengakses key class nya

class Person {
  String name;
  int age;
  // menyatakan member dari class itu menjadi milik class tersebut bukan jadi milik objectnya
  static int maxAge = 150;

  Person(this.name, int age) {
    this.age = (age > 150) ? 150 : age;
  }
}
