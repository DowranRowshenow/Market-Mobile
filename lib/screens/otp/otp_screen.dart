import 'package:flutter/material.dart';
import 'package:market/components/back_icon_button.dart';
import 'package:market/size_config.dart';

import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  const OtpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: const BackIconButton(),
        title: const Text("OTP Verification"),
      ),
      body: const Body(),
    );
  }
}
