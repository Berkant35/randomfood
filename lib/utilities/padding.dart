

import 'package:flutter/material.dart';
import 'package:randomfood/init/constant/extension/EdgeExtension.dart';
import 'package:randomfood/init/init/theme/fontTheme.dart';


class AddNewFood extends StatelessWidget {
  const AddNewFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: EdgeExtension.lowEdge.edgeValue,
            bottom: EdgeExtension.highEdge.edgeValue),
        child: Text('Add New Food', style: ThemeValueExtension.headline3));;
  }
}
