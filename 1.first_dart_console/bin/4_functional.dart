import 'dart:io';

//TODO jika mengembalikan nilai harus membuat tipe data seperti double, int, maupun String pada function
double luas_segiempat(double panjang, double lebar) {
  return panjang * lebar;
}

String name(String nama) {
  return 'hello, ' + nama;
}
// ---------------------------------------------------------------------

//TODO jika tidak mengembalikan nilai gunakan void function
void hello() {
  print('hello gaes');
}
// ---------------------------------------------------------------------

//TODO named parameter
String say(String from, String message, { String to, String appName }) {
  return from + ' say ' + message  + ((to != null) ? ' to ' + to : '') + ((appName != null) ? ' via ' + appName : '');
}

//TODO positional parameter
String say2(String from, String message, [ String to, String appName ]) {
  return from + ' say ' + message  + ((to != null) ? ' to ' + to : '') + ((appName != null) ? ' via ' + appName : '');
}

//TODO default parameter
String say3(String from, String message, [ String to, String appName = 'club house' ]) {
  return from + ' say ' + message  + ((to != null) ? ' to ' + to : '') + ((appName != null) ? ' via ' + appName : '');
}
// ---------------------------------------------------------------------

//TODO arrow function / lambda expression
bool result(int number1, int number2) => number1 > number2;
double refactor_luas_segiempat(double number1, double number2) =>  number1 * number2; // refactor
// ---------------------------------------------------------------------

//TODO anonymous function
int doSomethingWithMath(int num1, int num2, Function sum) {
  return sum(num1, num2);
}

//TODO anonymous function with arrow function
int doArrowWithMath(int num1, int num2, Function(int, int) sum) {
  return sum(num1, num2);
}

void main(List<String> arguments) {
  // function without return
  hello();

  // function with return
  print(name('fachru dahri'));

  double p, l;
  p = double.tryParse(stdin.readLineSync());
  l = double.tryParse(stdin.readLineSync());
  print(luas_segiempat(p, l));

  // optional parameter
  print(say('cindy', 'cindy sayang abang banget banget', to: 'fachru ganteng', appName: 'signal'));
  print(say2('cindy', 'cindy sayang abang banget banget', 'fachru ganteng', 'signal'));
  print(say3('cindy', 'cindy sayang abang banget banget', 'fachru ganteng'));

  // arrow function
  print(result(5, 10));
  print(refactor_luas_segiempat(30, 10));

  // function yang di simpan dalam variable or identifier
  Function f;
  f = refactor_luas_segiempat; //dari function diatas yang di simpan dalam variable
  print(f(2.0, 5.0));

  // penggunaan anonymous function
  print(doSomethingWithMath(10, 12, (int a, int b) {
    return a + b;
  }));

  print(doArrowWithMath(20, 4, (a, b) => a + b));

}