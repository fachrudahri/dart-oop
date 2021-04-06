void main(List<String> arguments) {
  Hero a = Hero(10);
  Hero b = Hero(10);

  // cara memanggil fungsi object gabungan yang baru
  print((a + b).power);

  // hasilnya apakah a power samadengan b power, bukan a object samadengan b object
  print(a == b);
}

class Hero {
  final int power;

  Hero(this.power);

  // cara membuat fungsi objek gabungan
  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power + other.power);
    } else if (other is int) {
      return Hero(power + other);
    } else {
      return this;
    }
  }

  // cara override operator perbandingan agar a == b mengacu pada power bukan object
  @override
  bool operator ==(var other) {
    if (other is Hero) {
      if (other.power == power) {
        return true;
      }
    }
    return false;
  }
}
