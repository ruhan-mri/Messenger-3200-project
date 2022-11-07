import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:messenger/auth/screen/login.dart';
import 'package:messenger/auth/screen/otp_screen.dart';
import 'package:messenger/auth/screen/user_information.dart';
import 'package:messenger/common/error.dart';
import 'package:messenger/feature/select_contacts/screens/select_contact_screen.dart';
import 'package:messenger/feature/chat/screens/mobile_chat.dart';

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
    case SelectContactsPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const SelectContactsPage(),
      );
    case MobileChatScreen.routeName:
      final arguments = setting.arguments as Map<String, dynamic>;
      final name = arguments['name'];
      final uid = arguments['uid'];
      return MaterialPageRoute(
        builder: (context) => MobileChatScreen(
          name: name,
          uid: uid,
        ),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorPage(error: 'This page donot exist'),
        ),
      );
  }
}
