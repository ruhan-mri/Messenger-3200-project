import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/app_colors.dart';
import 'package:messenger/feature/landing.dart';
import 'package:messenger/firebase_options.dart';
import 'package:messenger/router.dart';

void main() async {
  // This is the glue that binds the framework to the Flutter engine.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(
      child: MyApp())); //here ProviderScope used for riverpod
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
          appBarTheme: const AppBarTheme(color: appBarColor)),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const LandingPage(),
      // const MobileScreenLayout(), //call the mobile screen layout
    );
  }
}
