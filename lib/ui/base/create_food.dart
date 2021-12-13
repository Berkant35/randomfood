import 'package:flutter/material.dart';

import 'package:randomfood/init/constant/app/pathImage.dart';
import 'package:randomfood/init/constant/extension/context_extension.dart';
import 'package:randomfood/utilities/check_part.dart';
import 'package:randomfood/utilities/ingredients.dart';
import 'package:randomfood/utilities/padding.dart';
import 'package:randomfood/utilities/recipe_food_form_field.dart';
import 'package:randomfood/utilities/subtitle_create.dart';
import 'package:randomfood/utilities/title_container.dart';
import 'package:randomfood/utilities/title_food_form_field.dart';
import 'package:randomfood/utilities/top_left.dart';
import 'package:randomfood/utilities/widgets/create_food_checkbox.dart';

class CreateFood extends StatefulWidget {
  const CreateFood({Key? key}) : super(key: key);

  @override
  State<CreateFood> createState() => _CreateFoodState();
}

class _CreateFoodState extends State<CreateFood> {
  var breakfastCheck = false;
  var lunch = false;
  var dinner = false;
  var doYouWantRecipe = false;
  var doYouWantAddCalorie = false;
  var ingredientList = <String>[];

  late TextEditingController _nameController;
  late TextEditingController _ingredientsController;
  late TextEditingController _directionsController;


  @override
  void initState() {
    _nameController = TextEditingController();
    _ingredientsController = TextEditingController();
    _directionsController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ingredientsController.dispose();
    _directionsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQueryExtension(context).height;
    var w = MediaQueryExtension(context).width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopLeft(w),
            const AddNewFood(),
            TitleContainer(w,h,'Choose time of the meal'),
            timeMeals(w),
            TitleContainer(w,h,'Write informations about your food'),
            const Subtitle('Name of food'),
            TextEditingFormFieldFoodName(_nameController),
            const Subtitle('Do you want add recipe?'),
            CheckWidget(w,doYouWantRecipe,checkDoYouWantRecipe,checkDoYouWantRecipeR),
            recipeForm(),
            const Subtitle('Do you want add calorie attribute?'),
            CheckWidget(w,doYouWantAddCalorie,checkDoYouWantCalorie,checkDoYouWantCalorieR),
          ],
        ),
      ),
    );
  }

  Column recipeForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        doYouWantRecipe != false ? const Subtitle('Recipe') : const SizedBox(),
        doYouWantRecipe != false ? Ingredients(
                ingredientList: ingredientList,
                addIngredientList: (List<String>? ingredientListCallBack){
                  ingredientList = ingredientListCallBack!;
                  setState(() {});
                },
              )
            : const SizedBox(),
        doYouWantRecipe != false
            ? TextEditingFormFieldFoodRecipe(
                controller: _directionsController,
                labelText: "DIRECTIONS",
                hintText: "Wash hands with soap and water. In small bowl, stir together miso, mayonnaise, and 2 tbsp vinegar.",
                isAddSlash: false)
            : const SizedBox(),
      ],
    );
  }

  Column timeMeals(double w) {
    return Column(
      children: [
        CreateCheckBox(
            w: w,
            initialValue: breakfastCheck,
            nameMeal: 'Breakfast',
            pathImage: PathImage.breakfast,
            onChanged: (value) => setState(() => breakfastCheck = value)),
        CreateCheckBox(
            w: w,
            initialValue: lunch,
            nameMeal: 'Lunch',
            pathImage: PathImage.tupper,
            onChanged: (value) => setState(() => lunch = value)),
        CreateCheckBox(
            w: w,
            initialValue: dinner,
            nameMeal: 'Dinner',
            pathImage: PathImage.waiter,
            onChanged: (value) => setState(() => dinner = value)),
      ],
    );
  }

  checkDoYouWantRecipeR(value) => setState(() => doYouWantRecipe = !value);
  checkDoYouWantCalorieR(value) => setState(() => doYouWantAddCalorie = !value);
  checkDoYouWantRecipe(value) => setState(() => doYouWantRecipe = value);
  checkDoYouWantCalorie(value) => setState(() => doYouWantAddCalorie = value);
}
