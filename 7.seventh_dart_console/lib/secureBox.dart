// cara penggunaan sebuah generic type cukup tambahkan <T> bebas mau T atau X
class SecureBox<T> {
  final T _data;
  final String _pin;

  SecureBox(this._data, this._pin);

  T getData(String pin) => (pin == _pin) ? _data : null;
}
