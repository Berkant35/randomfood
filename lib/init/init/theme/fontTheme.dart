

import 'package:flutter/cupertino.dart';
import 'package:randomfood/init/constant/app/app_constant.dart';


extension ThemeValueExtension on TextStyle {
  static TextStyle get headline1 => const TextStyle(fontSize: 98,fontWeight: FontWeight.w100,letterSpacing: -1.5,fontFamily: ApplicationConstants.FONT_FAMILY  );
  static TextStyle get headline2 => const TextStyle(fontSize: 61,fontWeight: FontWeight.w100,letterSpacing: -0.5       ,fontFamily: ApplicationConstants.FONT_FAMILY  );
  static TextStyle get headline3 => const TextStyle(fontSize: 49,fontWeight: FontWeight.normal,letterSpacing: 0        ,fontFamily: ApplicationConstants.FONT_FAMILY  );
  static TextStyle get headline4 => const TextStyle(fontSize: 35,fontWeight: FontWeight.normal,letterSpacing: 0.25     ,fontFamily: ApplicationConstants.FONT_FAMILY  );
  static TextStyle get headline5 => const TextStyle(fontSize: 25,fontWeight: FontWeight.normal,letterSpacing: 0        ,fontFamily: ApplicationConstants.FONT_FAMILY  );
  static TextStyle get headline6 => const TextStyle(fontSize: 20,fontWeight: FontWeight.w700,letterSpacing: 0.15       ,fontFamily: ApplicationConstants.FONT_FAMILY  );
  static TextStyle get subtitle => const TextStyle(fontSize: 16,fontWeight: FontWeight.normal,letterSpacing: 0.15      ,fontFamily: ApplicationConstants.FONT_FAMILY  );
  static TextStyle get subtitle2 => const TextStyle(fontSize: 14,fontWeight: FontWeight.w700,letterSpacing: 0.1        ,fontFamily: ApplicationConstants.FONT_FAMILY   );
  static TextStyle get body => const TextStyle(fontSize: 16,fontWeight: FontWeight.normal,letterSpacing: 0.5           ,fontFamily: ApplicationConstants.FONT_FAMILY  );
  static TextStyle get body2 => const TextStyle(fontSize: 14,fontWeight: FontWeight.normal,letterSpacing: 0.25         ,fontFamily: ApplicationConstants.FONT_FAMILY  );
  static TextStyle get caption => const TextStyle(fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 0.4        ,fontFamily: ApplicationConstants.FONT_FAMILY  );
  static TextStyle get overline => const TextStyle(fontSize: 12,fontWeight: FontWeight.normal,letterSpacing: 1.5       ,fontFamily: ApplicationConstants.FONT_FAMILY   );
  static TextStyle get buttonTextStyle => const TextStyle(fontSize: 14,fontWeight: FontWeight.w100,letterSpacing: 1.25 ,fontFamily: ApplicationConstants.FONT_FAMILY   );
}
