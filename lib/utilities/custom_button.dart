import 'package:flutter/material.dart';
import 'package:randomfood/init/constant/extension/EdgeExtension.dart';
import 'package:randomfood/init/constant/extension/elevation_extension.dart';


// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  OutlinedBorder? outBorder;
  Color? primaryColor;
  Color? onPrimaryColor;
  Color? borderColor;
  Color? gradienFirstColor;
  Color? gradienSecondColor;
  Color? shadowColor;
  double? borderWidth;
  TextStyle? textStyle;

  double? width;
  double? borderRadius;
  double? elevation;
  double? height;
  Function onPressed;
  Widget? inButtonWidget;
  List<BoxShadow>? boxShadow;

  CustomElevatedButton(
      {required this.onPressed,
        this.height,
        this.width,
        this.outBorder,
        this.elevation,
        this.boxShadow,
        this.shadowColor,
        this.borderColor,
        this.borderRadius,
        this.borderWidth,
        this.primaryColor,

        this.onPrimaryColor,
        this.gradienFirstColor,
        this.gradienSecondColor,
        this.textStyle,
        this.inButtonWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: EdgeExtension.lowEdge.edgeValue),
      child: SizedBox(
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 0)),

              gradient: LinearGradient(
                  colors: [
                    gradienFirstColor ?? Colors.transparent,
                    gradienSecondColor ?? Colors.transparent
                  ]
              ),
              boxShadow: boxShadow
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: elevation ?? ElevationExtensions.none.elevateValue,
              shadowColor: shadowColor ?? Colors.white,
              shape: outBorder,
              primary: primaryColor,
              onPrimary: onPrimaryColor,
              textStyle: textStyle,
            ),
            onPressed: onPressed as void Function()?,
            child: inButtonWidget,
          ),
        ),
      ),
    );
  }
}