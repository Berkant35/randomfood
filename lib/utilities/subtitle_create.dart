import 'package:flutter/material.dart';
import 'package:randomfood/init/constant/extension/EdgeExtension.dart';
import 'package:randomfood/init/init/theme/fontTheme.dart';


class Subtitle extends StatelessWidget {
  final String? title;
  const Subtitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: EdgeExtension.normalEdge.edgeValue,
            left: EdgeExtension.mediumEdge.edgeValue
        ),
        child: Text(title!,
            style: ThemeValueExtension.headline5));
  }
}
