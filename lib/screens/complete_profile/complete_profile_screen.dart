import 'package:flutter/material.dart';
import 'package:market/components/back_button.dart';

import 'components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";

  const CompleteProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const BackIconButton(),
        title: const Text('Sign Up'),
      ),
      body: const Body(),
    );
  }
}
