import 'package:flowershopping/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  ColorIconText textPrimary = ColorIconText();
  ColorIconText textSecondary = ColorIconText();

  runApp(
    MaterialApp(
      title: 'Flower Shopping Online',
      theme: ThemeData(
        primaryColor: Color(0xFFCDDC39),
        accentColor: Color(0xFF8BC34A),
        primaryColorDark: Color(0xFFAFB42B),
        primaryColorLight: Color(0xFFF0F4C3),
        scaffoldBackgroundColor: Color(0xFFF4F4F4),
        dividerColor: Color(0xFFBDBDBD),
        buttonColor: Color(0xFF8BC34A),
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: textPrimary.textPrimaryColor),
          headline2: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: textPrimary.textPrimaryColor,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: textSecondary.textSecondaryColor,
            letterSpacing: 1,
          ),
          subtitle1: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: textPrimary.textPrimaryColor,
            letterSpacing: 1,
          ),
          subtitle2: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: textSecondary.textSecondaryColor,
            letterSpacing: 1,
          ),
          button: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF8BC34A),
          ),
        ),
      ),
      home: MySplashScreen(),
    ),
  );
}

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new BottomNavigation(),
      title: new Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.asset('images/bonzai.jpg'),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      loaderColor: Theme.of(context).primaryColorDark,
    );
  }
}

class ColorIconText {
  Color textPrimaryColor = Color(0xFF212121);
  Color textSecondaryColor = Color(0xFF757575);
  Color disabledIcon = Color(0xFF757575);
}
