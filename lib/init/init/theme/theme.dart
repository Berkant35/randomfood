  import 'package:flutter/material.dart';
  final ThemeData myTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor:  const Color( 0xff003921 ),
    primaryColorBrightness: Brightness.dark,
    primaryColorLight: const Color( 0xffccffea ),
    primaryColorDark: const Color( 0xff009959 ),
    bottomAppBarColor: const Color( 0xffffffff ),
    cardColor: const Color( 0xffffffff ),
    dividerColor: const Color( 0x1f000000 ),
    highlightColor: const Color( 0x66bcbcbc ),
    splashColor: const Color( 0x66c8c8c8 ),
    selectedRowColor: const Color( 0xfff5f5f5 ),
    unselectedWidgetColor: const Color( 0x8a000000 ),
    disabledColor: const Color( 0x61000000 ),
    toggleableActiveColor: const Color( 0xff00cc76 ),
    secondaryHeaderColor: const Color( 0xffe5fff4 ),
    backgroundColor: const Color( 0xff99ffd4 ),
    dialogBackgroundColor: const Color( 0xffffffff ),
    indicatorColor: const Color( 0xff00ff94 ),
    hintColor: const Color( 0x8a000000 ),
    errorColor: const Color( 0xffd32f2f ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88,
      height: 36,
      padding:  EdgeInsets.only(top:0,bottom:0,left:16, right:16),
      shape:      RoundedRectangleBorder(
      side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    )
 ,
      alignedDropdown: false ,
      buttonColor:  Color( 0xffe0e0e0 ),
      disabledColor: Color( 0x61000000 ),
      highlightColor:  Color( 0x29000000 ),
      splashColor:  Color( 0x1f000000 ),
      focusColor:  Color( 0x1f000000 ),
      hoverColor:  Color( 0x0a000000 ),
      colorScheme:  ColorScheme(
        primary:  Color( 0xff003921 ),
        primaryVariant: Color( 0xff009959 ),
        secondary: Color( 0xff00ff94 ),
        secondaryVariant:  Color( 0xff009959 ),
        surface: Color( 0xffffffff ),
        background: Color( 0xff99ffd4 ),
        error: Color( 0xffd32f2f ),
        onPrimary: Color( 0xffffffff ),
        onSecondary: Color( 0xff000000 ),
        onSurface: Color( 0xff000000 ),
        onBackground: Color( 0xffffffff ),
        onError: Color( 0xffffffff ),
        brightness: Brightness.light,
      ),
    ), colorScheme: ColorScheme.fromSwatch(primarySwatch: const MaterialColor(4278204705,{50: Color( 0xffe5fff4 )
		, 100: Color( 0xffccffea )
		, 200: Color( 0xff99ffd4 )
		, 300: Color( 0xff66ffbf )
		, 400: Color( 0xff33ffa9 )
		, 500: Color( 0xff00ff94 )
		, 600: Color( 0xff00cc76 )
		, 700: Color( 0xff009959 )
		, 800: Color( 0xff00663b )
		, 900: Color( 0xff00331e )
		})).copyWith(secondary: const Color( 0xff00ff94 )), textSelectionTheme: const TextSelectionThemeData(cursorColor: Color( 0xff4285f4 ), selectionColor: Color( 0xff99ffd4 ), selectionHandleColor: Color( 0xff66ffbf ),),
  );
