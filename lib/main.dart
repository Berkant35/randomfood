import 'package:flutter/material.dart';
import 'package:randomfood/init/init/navigation/navigation_service.dart';
import 'package:randomfood/ui/base/base.dart';

import 'init/init/navigation/navigation_route.dart';
import 'init/init/theme/theme.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( const RandomFood());
}

class RandomFood extends StatefulWidget {
  const RandomFood({Key? key}) : super(key: key);

  @override
  State<RandomFood> createState() => _RandomFoodState();
}

class _RandomFoodState extends State<RandomFood> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Random Food',
        theme: myTheme,
        onGenerateRoute: NavigationRoute.instance.generateRoute,
        debugShowCheckedModeBanner: false,
        navigatorKey: NavigationService.instance.navigatorKey,
      home: const BasePage()
    );
  }

}
