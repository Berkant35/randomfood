import 'package:flutter/material.dart';

import 'package:randomfood/init/constant/extension/EdgeExtension.dart';
import 'package:randomfood/init/init/theme/custom_colors.dart';
import 'package:randomfood/init/init/theme/fontTheme.dart';

class TextEditingFormFieldFoodName extends StatefulWidget {
  final TextEditingController controller;

  const TextEditingFormFieldFoodName(this.controller);

  @override
  _TextEditingFormFieldFoodNameState createState() => _TextEditingFormFieldFoodNameState();
}

class _TextEditingFormFieldFoodNameState extends State<TextEditingFormFieldFoodName> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(EdgeExtension.normalEdge.edgeValue),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: 'Bean..',
          hintStyle: ThemeValueExtension.headline6.copyWith(color: CustomColor.c4.withOpacity(0.70)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(EdgeExtension.mediumEdge.edgeValue)
          ),
          contentPadding: EdgeInsets.all(EdgeExtension.lowEdge.edgeValue),
        ),
      ),
    );
  }
}



