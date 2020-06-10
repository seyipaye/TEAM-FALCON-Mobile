import 'package:flutter/material.dart';
import 'package:how_to_recipes/core/services/key_storage/key_storage_service.dart';
import 'package:how_to_recipes/locator.dart';

class Constants {
  static String appName = "GEWC Mobile";

  //Colors for theme
  static Color lightPrimary = Color(0xffE5E5E5);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.black;
  static Color darkAccent = Colors.white;
  static Color lightBG = Color(0xffE5E5E5);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;
  static Color weirdBlue = Color(0xff1D1754);
  static Color kLightOrange = Color(0xFFFFAC50);
  static Color kDarkOrange = Color(0xFFFC7A1E);

  static const kfont = 'DMSans';

  static const kPaddingS = 8.0;
  static const kPaddingM = 16.0;
  static const kPaddingL = 32.0;

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: darkBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
//      iconTheme: IconThemeData(
//        color: lightAccent,
//      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    accentColor: darkAccent,
    cardColor: darkPrimary.withOpacity(0.5),
    scaffoldBackgroundColor: darkBG,
    cursorColor: darkAccent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: lightBG,
          fontSize: 18.0,
          fontWeight: FontWeight.w800,
        ),
      ),
//      iconTheme: IconThemeData(
//        color: darkAccent,
//      ),
    ),
  );
}

class AppStateNotifier extends ChangeNotifier {
  final keystorage = locator<KeyStorageService>();

  void updateTheme() {
    keystorage.isDarkMOde = !keystorage.isDarkMOde;
    notifyListeners();
  }
}
