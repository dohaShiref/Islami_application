import 'package:flutter/material.dart';
import 'package:islami_application/homeScreen.dart';

void main() {
  runApp(MyApp());
}
class MyThemeData{
  static final Primaty_color=Color.fromRGBO(183, 147, 95, 1.0);
  static final SelectedIemColor=Color.fromRGBO(0, 0, 0, 1.0);
  static final UnSelectedIemColor=Color.fromRGBO(255, 255, 255, 1.0);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: MyThemeData.Primaty_color,

      ),
      routes: {
        homeScreen.routeName:(buildContext)=>homeScreen()
      },
      initialRoute: homeScreen.routeName,
    );
  }
}
