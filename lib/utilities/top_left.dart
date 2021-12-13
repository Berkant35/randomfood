
import 'package:flutter/material.dart';
import 'package:randomfood/init/init/theme/custom_colors.dart';

import 'create_food_circle.dart';


class TopLeft extends StatelessWidget {
   final double w;
   const TopLeft(this.w, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return buildStack(w);
  }
   static Stack buildStack(double w){
     return Stack(
       children: [
         SizedBox(
           height: w / 3,
           width: w / 3,
           child: QuarterCircle(
             circleAlignment: CircleAlignment.topLeft,
             radius: w / 3.8,
             color: CustomColor.lint.withOpacity(0.6),
           ),
         ),
         SizedBox(
           height: w / 4,
           width: w / 4,
           child: QuarterCircle(
             circleAlignment: CircleAlignment.topLeft,
             radius: w / 4.4,
             color: CustomColor.forestGreen,
           ),
         )
       ],
     );
   }
}
