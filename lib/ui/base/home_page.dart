import 'package:flutter/material.dart';
import 'package:randomfood/init/constant/extension/EdgeExtension.dart';
import 'package:randomfood/init/constant/extension/context_extension.dart';
import 'package:randomfood/init/init/theme/fontTheme.dart';
import 'package:randomfood/utilities/home_top.dart';
import 'package:randomfood/utilities/widgets/home_middle.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final flexhead = 2;
  final flexmiddle = 10;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          head(),
          text('Create random menu for meal..'),
          HomeMiddle(flexmiddle: flexmiddle,bigRadius: MediaQueryExtension(context).width*0.45,smallRadius: MediaQueryExtension(context).width*0.35,)
        ],
      ),
    );
  }
  Padding text(var string) {
    return Padding(
      padding: EdgeInsets.only(top: EdgeExtension.highEdge.edgeValue),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(string,style: ThemeValueExtension.headline6)),
    );
  }
  Expanded head() {
    return Expanded(
        flex: flexhead,
        child: Stack(
          children: [
            buildSizedBox(SecondCirclePainter()),
            buildSizedBox(CirclePainter()),

          ],
        ));
  }

  SizedBox buildSizedBox(CustomPainter painter) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: CustomPaint(painter: painter));
  }
}
