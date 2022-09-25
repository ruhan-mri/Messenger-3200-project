import 'package:flutter/material.dart';
import 'package:messenger/app_colors.dart';
import 'package:messenger/mobile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //access all the other components and widgets
      debugShowCheckedModeBanner: false, //debug banner not to be seen
      title: 'Messenger',
      theme: ThemeData.dark().copyWith(
        //dark is default but copywith use for overwite the theme color
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const MobileScreenLayout(), //call the mobile screen layout
    );
  }
}
