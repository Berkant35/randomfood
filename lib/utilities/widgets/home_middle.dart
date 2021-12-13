import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:randomfood/init/constant/app/pathImage.dart';
import 'package:randomfood/init/constant/extension/EdgeExtension.dart';
import 'package:randomfood/init/constant/extension/context_extension.dart';
import 'package:randomfood/init/constant/extension/elevation_extension.dart';
import 'package:randomfood/init/init/theme/custom_colors.dart';
import 'package:randomfood/init/init/theme/fontTheme.dart';
import 'package:randomfood/utilities/custom_button.dart';

import '../home_middle_circle.dart';

class HomeMiddle extends StatefulWidget {
  final flexmiddle;
  final bigRadius;
  final smallRadius;

  const HomeMiddle({this.flexmiddle, this.bigRadius, this.smallRadius});

  @override
  _HomeMiddleState createState() => _HomeMiddleState();
}

class _HomeMiddleState extends State<HomeMiddle> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQueryExtension(context).height;
    var w = MediaQueryExtension(context).width;

    Opacity buildImage(var imagePath, bool isOpacity) {
      return Opacity(
        opacity: isOpacity == true ? 0.55 : 1,
        child: Image.asset(
          imagePath,
          width: w / 8,
          height: w / 8,
        ),
      );
    }
    ClipRRect buildCustomElevatedButton(){
      return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(EdgeExtension.hugeEdge.edgeValue*4)),
        child: CustomElevatedButton(onPressed: (){},
          height: w/5,
          elevation: ElevationExtensions.lowElevation.elevateValue*10,
          shadowColor: CustomColor.c4.withOpacity(0.45),
          primaryColor: Colors.transparent,
          width: w/5,
          inButtonWidget: Image.asset(PathImage.mainWaiter),
        ),
      );
    }
    return Expanded(
      flex: widget.flexmiddle,
      child: Padding(
        padding: EdgeInsets.all(EdgeExtension.hugeEdge.edgeValue),
        child: Material(
          borderRadius:
              BorderRadius.circular(EdgeExtension.normalEdge.edgeValue),
          elevation: ElevationExtensions.mediumElevation.elevateValue,
          child: Container(
            decoration: BoxDecoration(
                color: CustomColor.cornFlower.withOpacity(0.20),
                borderRadius: BorderRadius.all(
                    Radius.circular(EdgeExtension.normalEdge.edgeValue))),
            child: Center(
              child: Stack(
                children: [
                  buildAlign(buildSizedBox(widget.bigRadius, Colors.white)),
                  buildAlign(buildSizedBox(widget.bigRadius,
                      CustomColor.forestGreen.withOpacity(0.75))),
                  buildAlign(buildSizedBox(widget.smallRadius, Colors.white)),
                  buildAlign(buildSizedBox(widget.smallRadius,
                      CustomColor.cornFlower.withOpacity(0.20))),
                  buildAlign(buildCustomElevatedButton()),
                  //buildAlign(buildImage(PathImage.mainWaiter, false)),
                  buildPositioned(
                      h / 4, w / 1.50, buildImage(PathImage.vegetable, true)),
                  buildPositioned(
                      h / 4.05, w / 16, buildImage(PathImage.harvest, true)),
                  buildPositioned(h / 18, w / 1.50,
                      buildImage(PathImage.healthyFood, true)),
                  buildPositioned(h / 10, w / 2.70,
                      buildImage(PathImage.shoppingBag, true)),
                  buildPositioned(
                      h / 18, w / 10, buildImage(PathImage.rawFood, true)),
                  text('What i will eat')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }



  Positioned buildPositioned(double top, double left, Widget customWidget) {
    return Positioned(top: top, left: left, child: customWidget);
  }

  Align buildAlign(Widget widget) {
    return Align(alignment: Alignment.center, child: widget);
  }

  SizedBox buildSizedBox(double radius, Color color) {
    return SizedBox(
      height: radius,
      width: radius,
      child: CustomPaint(
        painter: CirclePainter(color),
      ),
    );
  }

  Padding text(var string) {
    return Padding(
      padding: EdgeInsets.only(bottom: EdgeExtension.hugeEdge.edgeValue),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(string, style: ThemeValueExtension.headline3)),
    );
  }
}
