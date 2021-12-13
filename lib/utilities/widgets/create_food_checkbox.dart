import 'package:flutter/material.dart';
import 'package:randomfood/init/constant/app/app_constant.dart';
import 'package:randomfood/init/constant/extension/EdgeExtension.dart';
import 'package:randomfood/init/init/theme/custom_colors.dart';
import 'package:randomfood/init/init/theme/fontTheme.dart';

class CreateCheckBox extends StatelessWidget {
  final double? w;
  final bool? initialValue;
  final String? nameMeal;
  final String? pathImage;
  final Function(bool boolValue)? onChanged;

  const CreateCheckBox({Key? key,
    this.w, this.initialValue, this.nameMeal, this.pathImage, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: EdgeExtension.normalEdge.edgeValue,bottom: EdgeExtension.normalEdge.edgeValue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          EdgeExtension.lowEdge.edgeValue)),
                  value: initialValue,
                  onChanged: (value) => onChanged!(value!)),
              Text(
                nameMeal!,
                style: ThemeValueExtension.headline5.copyWith(
                  color: CustomColor.emeraldGreen,
                  fontWeight: FontWeight.bold,
                  fontFamily: ApplicationConstants.FONT_FAMILY2,
                ),
              ),
            ],
          ),
          pathImage != null ? Padding(
              padding: EdgeInsets.only(right: EdgeExtension.lowToNormalEdge.edgeValue),
              child: Image.asset(pathImage!,width: w!/14,height: w!/14,fit: BoxFit.cover,)) : const SizedBox(),
        ],
      ),
    );
  }
}
