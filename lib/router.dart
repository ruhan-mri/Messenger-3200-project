import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:messenger/auth/screen/login.dart';
import 'package:messenger/auth/screen/otp_screen.dart';
import 'package:messenger/auth/screen/user_information.dart';
import 'package:messenger/common/error.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  switch (setting.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );
    case OTPPage.routeName:
      final verificationId = setting.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPPage(
          verificationId: verificationId,
        ),
      );
    case UserInformationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const UserInformationPage(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorPage(error: 'This page donot exist'),
        ),
      );
  }
}
