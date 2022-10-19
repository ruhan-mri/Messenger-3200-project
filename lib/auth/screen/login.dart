import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/app_colors.dart';
import 'package:messenger/auth/controller/auth_controller.dart';
import 'package:messenger/common/button.dart';
import 'package:country_picker/country_picker.dart';
import 'package:messenger/common/utils/utils.dart';

class LoginPage extends ConsumerStatefulWidget {
  static const routeName = '/login-screen';
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final phoneController = TextEditingController();
  Country? country;

  // @override
  // void dispose() {
  //   super.dispose();
  //   phoneController.dispose();
  // }

  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            // using setstate country may not be null
            country = _country;
          });
        });
  }

  void sendPhoneNumber() {
    String phoneNumber = phoneController.text.trim();
    if (country != null && phoneNumber.isNotEmpty) {
      // provider.of(context, listen: false) default
      ref
          .read(authControllerProvider)
          .signInWithPhone(context, '+${country!.phoneCode}$phoneNumber');
      // provider ref -> Interact provider with provider
      // widget ref -> makes widget interact with provider
    } else {
      showSnackBar(context: context, content: 'Fill all the fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('App needs to verify your phone number'),
            const SizedBox(height: 10),
            TextButton(
              onPressed:
                  pickCountry, // not use () => becz we not pass any value
              child: const Text('Pick Country'),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                if (country != null) Text('+${country!.phoneCode}'),
                const SizedBox(width: 10),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(hintText: 'Phone Number'),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.5), //0.6
            SizedBox(
              width: 90,
              child: Button(
                onPressed: sendPhoneNumber,
                text: 'NEXT',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// add country peaker dependency in dart dependency