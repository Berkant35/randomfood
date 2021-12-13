import 'package:flutter/material.dart';

import 'package:randomfood/init/constant/app/app_constant.dart';
import 'package:randomfood/init/constant/extension/EdgeExtension.dart';
import 'package:randomfood/init/init/theme/custom_colors.dart';
import 'package:randomfood/init/init/theme/fontTheme.dart';


class TitleContainer extends StatelessWidget {
  final double? w;
  final double? h;
  final String? title;

  const TitleContainer(this.w, this.h, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h! / 15,
      color: CustomColor.forestGreen,
      padding: EdgeInsets.all(EdgeExtension.lowEdge.edgeValue),
      child: Text(
          title!,
          style: ThemeValueExtension.headline4.copyWith(
              color: Colors.white,
              fontFamily: ApplicationConstants.FONT_FAMILY2)
      ),
    );
  }
}
