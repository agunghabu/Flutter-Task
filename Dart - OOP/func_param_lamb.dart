import 'dart:io';

main(List<String> args) {

  // Function //
  String func(String nama) {
    return ("Nama Anda Adalah = " + nama);
  }
  String login = func("Agung");
  print(login);


  // Parameter - {} //
  String param1(String nama, String alamat, {int umur = 18, int total = 100}) {
    return ("Nama Anda Adalah = " + nama) + 
           ("\nAlamat Anda Adalah = " + alamat) +
           ("\nUmur Anda Adalah = " + umur.toString() +
           ("\nTotal Anda Adalah = " + total.toString()));
  }
  print(param1("Agung", "Kepanjen"));

  // Parameter - [] //
  String param2(String nama, String alamat, [int umur = 18, int total = 100]) {
    return ("Nama Anda Adalah = " + nama) + 
           ("\nAlamat Anda Adalah = " + alamat) +
           ("\nUmur Anda Adalah = " + umur.toString() +
           ("\nTotal Anda Adalah = " + total.toString()));
  }
  print(param2("Agung", "Kepanjen", 17));


  // Lambda Expression //
  int sum(num1, num2) => num1+ num2;
  print(sum(4, 8));

  output() => print("Agung Setya");
  output();


  // Anonymus Function //
  int sumanon(num1, num2, Function calc) {
    return (num1 + num2) + calc(num1, num2);
  }
  print(sumanon(4, 10, (obj1, obj2) => obj1 * obj2));
  
}