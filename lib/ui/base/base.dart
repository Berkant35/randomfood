import 'package:flutter/material.dart';
import 'package:randomfood/init/constant/extension/EdgeExtension.dart';
import 'package:randomfood/init/constant/extension/iconSizeExtension.dart';
import 'package:randomfood/init/init/theme/custom_colors.dart';
import 'package:randomfood/ui/base/create_food.dart';

import 'home_page.dart';
import 'my_food_list.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> with WidgetsBindingObserver {
  var _selectedItemPosition = 1;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showPage(_selectedItemPosition),
      bottomNavigationBar: buildNavigationBar(),
    );
  }

  ClipRRect buildNavigationBar() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(EdgeExtension.mediumEdge.edgeValue),
          topLeft: Radius.circular(EdgeExtension.mediumEdge.edgeValue)
      ),
      child: BottomNavigationBar(
        selectedFontSize: IconSizeExtension.HIGH.sizeValue*0.3,
        selectedItemColor: CustomColor.emeraldGreen,
        unselectedItemColor: Colors.white,
        backgroundColor: CustomColor.lint.withOpacity(0.6),
        elevation: 0,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: IconSizeExtension.HIGH.sizeValue,
        currentIndex: _selectedItemPosition,
        onTap: changeState,
        items: items(),
      ),
    );
  }

  void changeState(value) {
    setState(() {
      _selectedItemPosition = value;
    });
  }

  showPage(int selectedItemPosition) {
    switch (selectedItemPosition) {
      case 0:
        return const MyFoodList();
      case 1:
        return const HomePage();
      case 2:
        return const CreateFood();
      default:
        break;
    }
  }

  List<BottomNavigationBarItem> items() {
    return const [
      BottomNavigationBarItem(icon: Icon(Icons.view_list), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.library_add), label: ''),
    ];
  }
}
