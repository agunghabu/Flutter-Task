import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Global {
  //* Text Bold //
  static FontWeight defBoldText = FontWeight.w700;

  //* Box Border //
  static Border defBoxBorder = Border.all(width: 2, color: Colors.black);

  //* Border Radius //
  static BorderRadius defRadius = BorderRadius.circular(26);

  //* Text Colors [Black] //
  static Color defTextsColor = Colors.black;

  //* Text Colors [Grey] //
  static Color defBluReyText = Colors.blueGrey.shade700;

  //* Icon Colors //
  static Color defIconsColor = Colors.indigoAccent;

  //* Box Shadow [Grey] //
  static BoxShadow defBoxShadow1 = BoxShadow(
      color: Colors.grey.withOpacity(0.1),
      offset: const Offset(0, 0),
      blurRadius: 10);
  static BoxShadow defBoxShadow2 = BoxShadow(
      color: Colors.grey.withOpacity(0.1),
      offset: const Offset(0, 0),
      blurRadius: 10);
}

class TopBar {
  //* Settings Icon //
  static Icon defSettingsIcon =
      Icon(Iconsax.setting_3, color: Global.defIconsColor, size: 36);

  //* Location Section //
  static Icon defLocationsIcon =
      Icon(Iconsax.location5, color: Global.defIconsColor, size: 24);
  static TextStyle tokyoStyle =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w700);
  static TextStyle updateText =
      TextStyle(fontSize: 11, color: Central.defTextsColor);
  static BoxDecoration updateBox = BoxDecoration(
      gradient: Central.defLinear, borderRadius: BorderRadius.circular(6));

  //* Profile Picture //
  static ClipRRect profilePicture = ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: const Image(image: AssetImage("Templates/Pic.jpg")));
}

class Central {
  //* Status Image //
  static AssetImage defStatusImage = const AssetImage(
      "Templates/weather_icons/moon_cloud_lighting_star_1.png");

  //* Text Color [White] //
  static Color defTextsColor = Colors.white;

  //* Gradien: LinearGradien //
  static LinearGradient defLinear = const LinearGradient(
      colors: [Colors.purpleAccent, Colors.indigoAccent],
      begin: FractionalOffset.topLeft,
      end: FractionalOffset.bottomRight);

  //* Box Shadow [Colored] //
  static BoxShadow defBoxShadow1 = BoxShadow(
      color: Colors.indigoAccent.withOpacity(0.65),
      offset: const Offset(5, 5),
      blurRadius: 12);
  static BoxShadow defBoxShadow2 = BoxShadow(
      color: Colors.purpleAccent.withOpacity(0.4),
      offset: const Offset(-5, -5),
      blurRadius: 12);

  //* Degree //
  static TextStyle defDegNum = TextStyle(
      height: 1,
      fontSize: 80,
      fontWeight: Global.defBoldText,
      color: defTextsColor);
  static TextStyle defDegSymb =
      TextStyle(fontSize: 30, height: 1, color: defTextsColor);

  //* AQI Recap //
  static BoxDecoration defAQIBox = BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(10),
      color: Colors.white.withOpacity(0.3));
  static TextStyle defAQIText = TextStyle(fontSize: 13, color: defTextsColor);

  //* 2 Icon //
  static Icon defFirstIcon = Icon(Icons.umbrella_rounded, color: defTextsColor);
  static Icon defLastIcon = Icon(Iconsax.cloud_lightning, color: defTextsColor);
}

class Quality {
  //* Header - AQI //
  static Icon defAQIcon =
      Icon(Iconsax.cloud_notif, size: 38, color: Global.defIconsColor);
  static TextStyle defAirQualityText =
      TextStyle(fontSize: 18, fontWeight: Global.defBoldText);

  //* Header - Refresh Icon //
  static Icon defRefreshIcon =
      Icon(Iconsax.refresh, color: Global.defTextsColor);

  //* AQI Data - Text //
  static TextStyle defAQText_1 =
      TextStyle(height: 1, fontSize: 13, color: Colors.blueGrey.shade700);
  static TextStyle defAQText_2 = TextStyle(
      height: 1,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.blueGrey.shade700);

  //* AQI Data - Icons //
  static Icon defAQIcons_1 =
      Icon(Iconsax.wind, size: 26, color: Global.defIconsColor);
  static Icon defAQIcons_2 =
      Icon(Iconsax.cloud_drizzle4, size: 26, color: Global.defIconsColor);
  static Icon defAQIcons_3 =
      Icon(Iconsax.cloud_sunny, size: 26, color: Global.defIconsColor);
  static Icon defAQIcons_4 =
      Icon(Iconsax.sun_1, size: 26, color: Global.defIconsColor);
  static Icon defAQIcons_5 =
      Icon(Iconsax.drop3, size: 26, color: Global.defIconsColor);
  static Icon defAQIcons_6 =
      Icon(Iconsax.wind_2, size: 26, color: Global.defIconsColor);
}

class Forecasters {
  //* Active //
  static BoxDecoration activeBox = BoxDecoration(
      gradient: LinearGradient(colors: [
        Colors.purpleAccent.withOpacity(0.9),
        Colors.indigoAccent.withOpacity(0.9)
      ], begin: FractionalOffset.bottomLeft, end: FractionalOffset.topRight),
      boxShadow: [
        BoxShadow(
            color: Colors.indigoAccent.withOpacity(0.2),
            offset: const Offset(2, 2),
            blurRadius: 8),
        BoxShadow(
            color: Colors.purpleAccent.withOpacity(0.2),
            offset: const Offset(-2, -2),
            blurRadius: 8)
      ],
      borderRadius: BorderRadius.circular(70));
  static TextStyle actvDateText_1 = const TextStyle(
      height: 1,
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w700);
  static TextStyle actvDateText_2 =
      const TextStyle(height: 1, fontSize: 11, color: Colors.white);
  static TextStyle actvDegreeNum = const TextStyle(
      fontSize: 20,
      height: 1,
      color: Colors.white,
      fontWeight: FontWeight.w700);
  static TextStyle actvDegreeSym =
      const TextStyle(fontSize: 14, height: 0.1, color: Colors.white);

  //* Header //
  static TextStyle defWFText =
      const TextStyle(fontSize: 18.5, fontWeight: FontWeight.w700);
  static TextStyle defDetailsText =
      TextStyle(fontSize: 17, color: Global.defIconsColor);
  static Icon defDetailsIcon =
      Icon(Iconsax.arrow_right_4, color: Global.defIconsColor);

  //* Date //
  static TextStyle defDateText_1 = const TextStyle(
      height: 1,
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w700);
  static TextStyle defDateText_2 =
      const TextStyle(height: 1, fontSize: 11, color: Colors.black);

  //* Degree //
  static TextStyle defDegreeNum = const TextStyle(
      fontSize: 20,
      height: 1,
      color: Colors.black,
      fontWeight: FontWeight.w700);
  static TextStyle defDegreeSym =
      const TextStyle(fontSize: 14, height: 0.1, color: Colors.black);
}
