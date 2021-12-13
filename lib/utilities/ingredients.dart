import 'package:flutter/material.dart';
import 'package:randomfood/init/constant/extension/EdgeExtension.dart';
import 'package:randomfood/init/constant/extension/iconSizeExtension.dart';
import 'package:randomfood/init/init/theme/custom_colors.dart';
import 'package:randomfood/init/init/theme/fontTheme.dart';
import 'package:randomfood/init/init/theme/theme.dart';
import 'package:randomfood/utilities/custom_button.dart';
import 'package:randomfood/utilities/subtitle_create.dart';

class Ingredients extends StatefulWidget {
  final List<String>? ingredientList;
  final Function(List<String>? ingredientListCallBack)? addIngredientList;

  const Ingredients(
      {Key? key, required this.addIngredientList, required this.ingredientList})
      : super(key: key);

  @override
  _IngredientsState createState() => _IngredientsState();
}

class _IngredientsState extends State<Ingredients> {
  final _ingredientKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: EdgeExtension.normalEdge.edgeValue,
          right: EdgeExtension.mediumEdge.edgeValue,
          left: EdgeExtension.mediumEdge.edgeValue),
      child: Form(
        key: _ingredientKey,
        child: Column(
          children: [
            Row(
              children: [
                Text("Add ingredient", style: ThemeValueExtension.subtitle),
                IconButton(
                  icon: Icon(Icons.add_box,
                      color: CustomColor.b4.withOpacity(0.90),
                      size: IconSizeExtension.MEDIUMTOHIGH.sizeValue),
                  onPressed: () {
                    widget.ingredientList?.add('');
                    setState(() {});
                  },
                )
              ],
            ),
            widget.ingredientList!.isNotEmpty ? ListView.builder(
               itemCount: widget.ingredientList!.length,
               shrinkWrap: true,
               itemBuilder: (context,index){
             return Padding(
               padding:  EdgeInsets.only(bottom: EdgeExtension.lowEdge.edgeValue),
               child: Stack(
                 children: [
                   TextFormField(
                     initialValue: "${index+1}-)",
                     decoration: InputDecoration(
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(EdgeExtension.normalEdge.edgeValue),
                         borderSide: BorderSide(width: 5,color:CustomColor.lint,style: BorderStyle.solid),
                       ),
                       disabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(EdgeExtension.mediumEdge.edgeValue),
                       ),
                       contentPadding: EdgeInsets.all(EdgeExtension.mediumEdge.edgeValue),
                     ),
                     validator: (value){
                       return value!.isEmpty ? 'Boş bırakıldı' : null;
                     },
                     onSaved: (value){
                       if(widget.ingredientList![index].isEmpty){
                         widget.ingredientList![index]=value!;
                       }else if(widget.ingredientList![index] != value){
                         widget.ingredientList![index] = value!;
                       }else{
                         return;
                       }
                     },
                   ),
                   Positioned(
                       right: 0,
                       bottom: 5,
                       child: IconButton(icon: Icon(Icons.cancel_outlined,color: myTheme.errorColor,size: IconSizeExtension.MEDIUM.sizeValue,), onPressed: () {
                         widget.ingredientList?.removeAt(index);
                         widget.addIngredientList!(widget.ingredientList!);
                         setState(() {});
                       },))
                 ],
               ),
             );
           }) : const SizedBox(),
            widget.ingredientList!.isNotEmpty ? CustomElevatedButton(
                borderRadius: EdgeExtension.mediumEdge.edgeValue,
                inButtonWidget:  Text("Save",style: ThemeValueExtension.buttonTextStyle),
                onPressed: (){
                  if(_ingredientKey.currentState!.validate()){
                   _ingredientKey.currentState!.save();
                   widget.addIngredientList!(widget.ingredientList!);
                  }
                 }) : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
