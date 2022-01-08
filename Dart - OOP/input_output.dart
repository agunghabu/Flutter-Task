import 'dart:io';
void main(List<String> args) {
  
  String? nama, kelas;
  int? absen;

  print("Masukkan Nama Anda : ");
  nama = stdin.readLineSync();
  print("Masukkan Absen Anda : ");
  absen = stdin.readByteSync();
  print("Masukkan Kelas Anda : ");
  kelas = stdin.readLineSync();

  print("\n\n========== DATA ANDA ==========");
  print("Nama Anda Adalah : " + nama.toString());
  print("Absen Anda Adalah : " + absen.toString());
  print("Kelas Anda Adalah : " + kelas.toString());

}