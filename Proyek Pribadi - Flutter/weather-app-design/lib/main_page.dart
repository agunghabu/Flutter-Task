import 'package:flutter/material.dart';
import 'package:weather_app_2/configurator.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool active = false;
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* Screen Fix //
      // ListView Berguna Untuk Membuat Layar Bisa Di Scroll
      // Ke Bawah Jika Terdapat Banyak Widget Yang Membuat
      // 1 Layar Saja Tidak Cukup
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //* Settings //
                    FloatingActionButton(
                        onPressed: () {},
                        elevation: 2,
                        tooltip: "Settings",
                        highlightElevation: 4,
                        backgroundColor: Colors.white,
                        child: TopBar.defSettingsIcon),
                    //* Locations [Icon, Text, Update] //
                    // Disini Kita Membuat Widget Column Dulu, Karena
                    // Terdapat 1 Row Yang Berisi Ikon Lokasi & Text. Dan
                    // Dibawahnya Ada Text Yang Dibungkus Container. Widget
                    // Container Dibutuhkan Karena Terdapat Style Tertentu
                    Column(children: [
                      Row(children: [
                        TopBar.defLocationsIcon,
                        Text(" Tokyo", style: TopBar.tokyoStyle)
                      ]),
                      Container(
                          decoration: TopBar.updateBox,
                          padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                          child: Text("Updated", style: TopBar.updateText))
                    ]),
                    //* Profile Picture //
                    // Seperti Ikon Settings, Widget Yang Digunakan
                    // Adalah FAB. Alasan Utama Yaitu Agar Besarnya Sama.
                    // Setelah Itu "child"-nya Diisi Dengan Widget "Image"
                    // Yang Dibungkus Oleh "ClipRRect". Fungsinya Agar Gambar
                    // Tersebut Berbentuk Lingkaran.
                    //* Important //
                    // Jika Tidak Menggunakan FAB, Maka Gambar Tersebut
                    // Akan Menyebabkan Error Pixel Overflow
                    FloatingActionButton(
                        onPressed: () {},
                        elevation: 3,
                        highlightElevation: 4,
                        tooltip: "Profile Picture",
                        backgroundColor: Colors.white,
                        child: TopBar.profilePicture)
                  ])),
          //* Central Data //
          // Di Bagian Ini, Kita Menggunakan Widget "Stack"
          // Supaya StatusImage-nya Menimpa Container Central
          Stack(children: [
            //* Data Section //
            // Disini Kita Memakai Widget Container Sebagai
            // Tampilan Utama Dari Central
            Container(
                height: 220,
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.fromLTRB(16, 26, 16, 20),
                decoration: BoxDecoration(
                    boxShadow: [Central.defBoxShadow1, Central.defBoxShadow2],
                    borderRadius: Global.defRadius,
                    gradient: Central.defLinear),
                //* Text //
                // Di Dalam Central Terdapat 2 Bagian Utama Yaitu :
                // (Status - Date) & (AQI - Degree - Icon)
                // Karena 2 Bagian Tersebut Disusun Kesamping, maka
                // Keduanya Dibungkus Oleh Widget Row Dulu Dan Diberi
                // Properties [spaceBetween] Supaya Ada Jaraknya.
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //* Status - Date //
                      // Status & Date Disusun Ke Arah Bawah, Maka Kita
                      // Menggunakan Widget [Column].
                      // Properties [crossAxis => start] Membuat Teks Di
                      // Dalamnya Lurus Secara Vertical.
                      // Lalu [mainAxis => end] Membuat Posisi Teks Tersebut
                      // Ada Dibawah. Hal Ini Dilakukan Untuk Memberi (Space)
                      // Bagi (StatusImage)-nya.
                      Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Thunderstorm !!",
                                style: TextStyle(
                                    fontSize: 21,
                                    color: Central.defTextsColor,
                                    fontWeight: Global.defBoldText)),
                            Text("Saturday, 12 Feb",
                                style: TextStyle(
                                    fontSize: 16, color: Central.defTextsColor))
                          ]),
                      //* AQI - Degree - Icon //
                      // Sama Seperti Bagian (Status - Date), Disini
                      // Kita Menggunakan [Column] Agar Setiap Element
                      // Disusun Ke Bawah. Lalu Diberi Properties
                      // [mainAxis => spaceEvenly] Untuk Memberi Jarak
                      // Yang Seimbang.
                      //* Guide //
                      // Bagian 1 = Terdapat Element Derajat (Angka) Dan
                      // Simbol Derajat. Seperti Biasa, Jika Suatu Elemen
                      // Disusun Kesamping, Maka Menggunakan Widget [Row].
                      // Bagian 2 = Hanya Ada 1 Elemen Yaitu Teks Yang
                      // Menunjukkan "AQI". Tetapi Ada Style-nya, Maka Kita
                      // Bungkus Teks Tersebut Dengan Widget [Container].
                      // Bagian 3 = Ada 2 Ikon Yang Berdampingan, Penyelesaiannya
                      // Seperti Yg Sudah Dibahas Di Atas Tadi.
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("21", style: Central.defDegNum),
                                  Text("\u00b0", style: Central.defDegSymb)
                                ]),
                            Container(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                decoration: Central.defAQIBox,
                                child:
                                    Text("AQI 19", style: Central.defAQIText)),
                            Row(children: [
                              Central.defFirstIcon,
                              Central.defLastIcon
                            ])
                          ])
                    ])),
            //* StatusImage Section //
            // StatusImage Harus Berada Di Level Yang Sama Dengan
            // Widget [Container]-nya. Tidak Boleh Menjadi Anaknya,
            // Maupun Menjadi Parent-nya. Hal Ini Supaya (StatusImage)
            // Dapat Menimpa Widget [Container] Dan Menggunakan "Space"
            // Yang Telah Disediakan.
            Image(
                width: 230,
                height: 170,
                alignment: Alignment.topCenter,
                image: Central.defStatusImage)
          ]),
          //* Air Quality //
          Container(
              margin: const EdgeInsets.fromLTRB(20, 4, 20, 20),
              padding: const EdgeInsets.fromLTRB(18, 10, 18, 18),
              decoration: BoxDecoration(
                  color: Central.defTextsColor,
                  borderRadius: Global.defRadius,
                  boxShadow: [Global.defBoxShadow1, Global.defBoxShadow2]),
              child: Column(children: [
                //* AQ - Heading //
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Quality.defAQIcon,
                        Text("  AIR QUALITY", style: Quality.defAirQualityText)
                      ]),
                      FloatingActionButton.small(
                          onPressed: () {},
                          elevation: 2,
                          tooltip: "Refresh",
                          highlightElevation: 3,
                          shape: const StadiumBorder(),
                          backgroundColor: Colors.white,
                          child: Quality.defRefreshIcon)
                    ]),
                const SizedBox(height: 20),
                //* AQ - Data //
                // Supaya Ikon Yang Di Baris Ke-1 Lurus Secara Vertical
                // Dengan Ikon Yang Di baris Ke-2, Maka Kita Menggunakan
                // Widget [Row] Yang Mempunyai Anak Widget [Column].
                //* Guide /
                // -) Terdapat 3 Element Utama Yang Disusun Ke Samping,
                //    Maka Kita Menggunakan Widget [Row].
                // -) Di Dalamnya Kita Juga Akan Membuat 2 Element Yang
                //    Disusun Ke Bawah, Maka Anak Pertama Dari Widget
                //    [Row] Adalah Widget [Column].
                // -) Setiap 2 Element Dari Widget [Column] (Anak Pertama),
                //    Terdapat 2 Element Lagi Dan Itu Disusun Ke Samping.
                //    Berarti Anak Kedua Adalah Widget[Row].
                // -) Terakhir, Di Dalam Anak Kedua Terdapat 2 Element Yang
                //    Disusun Ke Bawah. Berarti Anak Ketiga Merupakan Widget
                //    [Column]
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Quality.defAQIcons_1,
                              const SizedBox(width: 6),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Wind", style: Quality.defAQText_1),
                                    Text("9", style: Quality.defAQText_2)
                                  ])
                            ]),
                            const SizedBox(height: 20),
                            Row(children: [
                              Quality.defAQIcons_2,
                              const SizedBox(width: 6),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("COR", style: Quality.defAQText_1),
                                    Text("74%", style: Quality.defAQText_2)
                                  ])
                            ])
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Quality.defAQIcons_3,
                              const SizedBox(width: 6),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Real Feel",
                                        style: Quality.defAQText_1),
                                    Text("22.3", style: Quality.defAQText_2)
                                  ])
                            ]),
                            const SizedBox(height: 20),
                            Row(children: [
                              Quality.defAQIcons_4,
                              const SizedBox(width: 6),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("UV Index",
                                        style: Quality.defAQText_1),
                                    Text("3", style: Quality.defAQText_2)
                                  ])
                            ])
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Quality.defAQIcons_5,
                              const SizedBox(width: 6),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("SO2", style: Quality.defAQText_1),
                                    Text("1.2", style: Quality.defAQText_2)
                                  ])
                            ]),
                            const SizedBox(height: 20),
                            Row(children: [
                              Quality.defAQIcons_6,
                              const SizedBox(width: 6),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("O3", style: Quality.defAQText_1),
                                    Text("48", style: Quality.defAQText_2)
                                  ])
                            ])
                          ]),
                    ])
              ])),
          //* Forecasters-1 //
          Container(
              width: 400,
              margin: const EdgeInsets.only(top: 10, bottom: 20),
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(children: [
                //* Forecaster 1 - Header //
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("WEEKLY FORECAST", style: Forecasters.defWFText),
                      Row(children: [
                        Text("Details", style: Forecasters.defDetailsText),
                        Forecasters.defDetailsIcon
                      ])
                    ])
              ])),
          //* Forecasters-2 //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                  decoration: (active == true)
                      ? Forecasters.activeBox
                      : const BoxDecoration(),
                  child: Column(children: [
                    Text("Thu",
                        style: (active == true)
                            ? Forecasters.actvDateText_1
                            : Forecasters.defDateText_1),
                    Text("10 Feb",
                        style: (active == true)
                            ? Forecasters.actvDateText_2
                            : Forecasters.defDateText_2),
                    const SizedBox(height: 30),
                    const Image(
                        height: 50,
                        width: 50,
                        image: AssetImage(
                            "Templates/weather_icons/sun_windy.png")),
                    const SizedBox(height: 30),
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      Text("27",
                          style: (active == true)
                              ? Forecasters.actvDegreeNum
                              : Forecasters.defDegreeNum),
                      Text("\u00B0",
                          style: (active == true)
                              ? Forecasters.actvDegreeSym
                              : Forecasters.defDegreeSym),
                    ])
                  ])),
              Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                  decoration: (active == true)
                      ? Forecasters.activeBox
                      : const BoxDecoration(),
                  child: Column(children: [
                    Text("Fri",
                        style: (active == true)
                            ? Forecasters.actvDateText_1
                            : Forecasters.defDateText_1),
                    Text("11 Feb",
                        style: (active == true)
                            ? Forecasters.actvDateText_2
                            : Forecasters.defDateText_2),
                    const SizedBox(height: 30),
                    const Image(
                        height: 50,
                        width: 50,
                        image: AssetImage(
                            "Templates/weather_icons/cloud_lighting_snow_windy.png")),
                    const SizedBox(height: 30),
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      Text("19",
                          style: (active == true)
                              ? Forecasters.actvDegreeNum
                              : Forecasters.defDegreeNum),
                      Text("\u00B0",
                          style: (active == true)
                              ? Forecasters.actvDegreeSym
                              : Forecasters.defDegreeSym),
                    ])
                  ])),
              Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                  decoration: (isActive == true)
                      ? Forecasters.activeBox
                      : const BoxDecoration(),
                  child: Column(children: [
                    Text("Sat",
                        style: (isActive == true)
                            ? Forecasters.actvDateText_1
                            : Forecasters.defDateText_1),
                    Text("12 Feb",
                        style: (isActive == true)
                            ? Forecasters.actvDateText_2
                            : Forecasters.defDateText_2),
                    const SizedBox(height: 30),
                    const Image(
                        height: 50,
                        width: 50,
                        image: AssetImage(
                            "Templates/weather_icons/moon_cloud_lighting_star_1.png")),
                    const SizedBox(height: 30),
                    Row(mainAxisSize: MainAxisSize.min, children: [
                      Text("21",
                          style: (isActive == true)
                              ? Forecasters.actvDegreeNum
                              : Forecasters.defDegreeNum),
                      Text("\u00B0",
                          style: (isActive == true)
                              ? Forecasters.actvDegreeSym
                              : Forecasters.defDegreeSym),
                    ])
                  ])),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                decoration: (active == true)
                    ? Forecasters.activeBox
                    : const BoxDecoration(),
                child: Column(
                  children: [
                    Text("Sun",
                        style: (active == true)
                            ? Forecasters.actvDateText_1
                            : Forecasters.defDateText_1),
                    Text("13 Feb",
                        style: (active == true)
                            ? Forecasters.actvDateText_2
                            : Forecasters.defDateText_2),
                    const SizedBox(height: 30),
                    const Image(
                        height: 50,
                        width: 50,
                        image: AssetImage(
                            "Templates/weather_icons/cloud_snow_rain.png")),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("15",
                            style: (active == true)
                                ? Forecasters.actvDegreeNum
                                : Forecasters.defDegreeNum),
                        Text("\u00B0",
                            style: (active == true)
                                ? Forecasters.actvDegreeSym
                                : Forecasters.defDegreeSym),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
