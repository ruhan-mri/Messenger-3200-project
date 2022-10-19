import 'package:flutter/material.dart';
import 'package:messenger/app_colors.dart';
import 'package:messenger/auth/screen/login.dart';
import 'package:messenger/common/button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        // content sob column akare thakbe
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            const SizedBox(height: 30), //50
            const Text(
              'Welcome to App_Name',
              style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: size.height / 15), // divided by 9
            Image.asset(
              'assets/bg.png',
              height: 300, // 340
              width: 300, // 340
              color: tabColor,
            ),

            SizedBox(height: size.height / 15), // divided by 9
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.75,
              child: Button(
                text: 'AGREE AND CONTINUE',
                onPressed: () => navigateToLoginScreen(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
