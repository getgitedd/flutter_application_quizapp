import 'package:flutter/material.dart';
import 'package:quiz_app/utils/color_constant.dart';
import 'package:quiz_app/view/home_screen/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: ColorConstants.scaffoldBackgroundColor),
      home: HomeScreen(),
    );
  }
}
