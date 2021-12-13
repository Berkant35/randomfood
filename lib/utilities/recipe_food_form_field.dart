import 'package:flutter/material.dart';
import 'package:randomfood/init/constant/app/app_constant.dart';
import 'package:randomfood/init/constant/extension/EdgeExtension.dart';
import 'package:randomfood/init/init/theme/custom_colors.dart';
import 'package:randomfood/init/init/theme/fontTheme.dart';

class TextEditingFormFieldFoodRecipe extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool isAddSlash;

  const TextEditingFormFieldFoodRecipe({required this.controller,required this.labelText,required this.hintText,required this.isAddSlash});

  @override
  _TextEditingFormFieldFoodRecipeState createState() => _TextEditingFormFieldFoodRecipeState();
}

class _TextEditingFormFieldFoodRecipeState extends State<TextEditingFormFieldFoodRecipe> {
  static const maxLine = 5;
  static const hintOpacityValue = 0.70;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(EdgeExtension.normalEdge.edgeValue),
      child: TextField(
        maxLines: maxLine,
        controller: widget.controller,
        style: ThemeValueExtension.headline6.copyWith(fontFamily: ApplicationConstants.FONT_FAMILY2,fontWeight: FontWeight.w800),
        decoration: InputDecoration(
          label: Text(widget.labelText,style: ThemeValueExtension.headline6),
          labelStyle: ThemeValueExtension.headline6.copyWith(color: CustomColor.emeraldGreen),
          hintText: widget.hintText,
          hintStyle: ThemeValueExtension.headline6.copyWith(color: CustomColor.b4.withOpacity(hintOpacityValue),fontFamily: ApplicationConstants.FONT_FAMILY2,fontWeight: FontWeight.w800),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(EdgeExtension.mediumEdge.edgeValue),
              gapPadding: 0
          ),
          contentPadding: EdgeInsets.all(EdgeExtension.normalEdge.edgeValue),
        ),
      ),
    );
  }
}
